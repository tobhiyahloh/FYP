<?php

namespace App\Http\Controllers;

use App\Book;
use Carbon\Carbon;
use App\Models\Loan;
use App\Models\User;
use App\Models\Record;
use App\Models\Penalty;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use phpDocumentor\Reflection\PseudoTypes\True_;

class LoanController extends Controller
{
    public function calFine(){
        
      }

    public function loanbook(){
        //$user = User::find(1);
        return view('loanbook');
    }

    public function loan(Request $request){
        $this->validate($request,[
            'userid' => 'required',
            'bookid' => 'required',
        ]);
        $userid = $request->get('userid');
        $user = User::find($userid);
        if($user == NULL || $userid == 3){
            return redirect()->route('dashboard.loanbook')->with('danger', 'Invalid User ID');
        }
        $penalty = Penalty::where('userid',"=",$request->get('userid'))->first();
        if($penalty !== NULL){
            return redirect()->route('dashboard.loanbook')->with('danger', 'Please settle up your fine before issuing a new book. ');
        }else{
            $bookid = $request->get('bookid');
            $book = Book::where('bookid',"=",$bookid)->first();
            if($book == NULL){
                return redirect()->route('dashboard.loanbook')->with('danger', 'Invalid Book ID');
            }else{
                $bookid = $request->get('bookid');
                $book = Book::where('bookid',"=",$bookid)->first();
                $book_status = $book->status;

                if($book_status == 1){
                    return redirect()->route('dashboard.loanbook')->with('danger', 'Book not available.');
                }elseif($user->book_issued >= 5){
                    return redirect()->route('dashboard.loanbook')->with('danger', 'User has reach your book issued limit. Please return your book before issuing a new book.');
                
                    
                }else{
                
                    $createdate = Carbon::now('GMT+8');
                    $duedate = Carbon::parse($createdate)->addDays(14)->startOfDay();
                    $bookid = $request->get('bookid');
                    $loan = new Loan([
                        'userid' => $request->get('userid'),
                        'bookid' => $request->get('bookid'),
                        'createdate' => $createdate->toDateString(),
                        'duedate' => $duedate->toDateString(),
                        'due_at' => $duedate,
                        'returndate' => \null
                    ]);
                    $loan->save();
                    $record = Record::where('bookid',"=",$bookid)->first();
                    if($record == NULL){
                        $record = new Record(['bookid'=>$request->get('bookid')]);
                        $record->save();
                    }else{
                        $record->count = $record->count +1;
                        $record->save();
                    }
                    
                
                    $book = Book::where('bookid',"=",$bookid)->first();
                    $book->status = 1;
                    $book->save();
                
                    $user = User::find($userid);
                    $user->book_issued = $user->book_issued +1;
                    $user->save();

                    return redirect()->route('dashboard.loanbook')->with('success', 'Book Issued Successfully.');

                }
            }
            //return \view('loanrecord')->with('success', 'Book Loaned Successfully.');
            
        }

        }
            
        public function viewloan(){
            $today = Carbon::now('GMT+8')->toDateString();

            $books = Loan::all();
            $now = Carbon::now('GMT+8');
            foreach($books as $book){
                if($book->due_at < Carbon::now('GMT+8')){
                    $bookid = $book->bookid;
                    $penalty = Penalty::where('bookid',"=",$bookid)->first();
                    $loan = Loan::where('bookid',"=",$bookid)->first();
                        if($penalty == NULL){
                            $penalty = new Penalty();
                            $penalty->userid = $book->userid;
                            $penalty->bookid = $book->bookid;
                            $due = $book->due_at;
                        
                            $day = $now->diffInDays($due);
                            $penalty->day = $day;
                            $amount = $day*1.5;
                            $penalty->amount = $amount;
                            $penalty->save();

                            $loan->amount = $amount;
                            $loan->save();

                        
                        }else{
                            $due = $book->due_at;
                            $day = $now->diffInDays($due);
                            $penalty->day = $day;
                            $amount = $day*1.5;
                            $penalty->amount = $amount;
                            $penalty->save();

                            $loan->amount = $amount;
                            $loan->save();
                        
                        }
                        
                }
            }   
            
        $loan = Loan::join('books','books.bookid',"=",'loans.bookid')
        ->join('categorys','categorys.id',"=",'books.categoryid')
        ->join('languages','languages.id',"=",'books.languageid')
        //->join('penalties','penalties.bookid',"=",'loans.bookid')
        ->select('loans.*','categorys.categoryname','languages.languagetype',
        'books.bookid','books.bookTitle','books.author','books.publisher','books.cover')
        ->orderBy('due_at','ASC')
        ->get();

        
        
        return \view('viewloan', \compact('loan','today'));
          
    
    }
    
    public function return($loanid){
        $loan = Loan::find($loanid);
       
        $bookid = $loan->bookid;
        $book = Book::where('bookid',"=", $bookid)->first();
        $book->status= 0;
        $book->save();

        $userid = $loan->userid;
        $user = User::find($userid);
        $user->book_issued = $user->book_issued -1;
        $user->save();

        $penalty = Penalty::where('bookid',"=",$bookid)->first();
        if($penalty == NULL){
            $loan ->delete();
            return redirect()->route('dashboard.viewloan')->with('status', "Book Return Successfully");
        }else{
            $penalty->delete();
            $loan ->delete();
            return redirect()->route('dashboard.viewloan')->with('status', "Book Return Successfully");
        }

       

    }

    public function loanrecord(){
        $record = Record::join('books','books.bookid',"=",'records.bookid')
        ->join('categorys','categorys.id',"=",'books.categoryid')
        ->join('languages','languages.id',"=",'books.languageid')
        ->select('records.*','categorys.categoryname','languages.languagetype',
        'books.bookid','books.bookTitle','books.author','books.publisher','books.cover')
        ->orderBy('count','DESC')
        ->paginate(10);

        return \view('loanrecord', \compact('record'));
    }

    public function userprofile(){
        $userid = Auth::user()->id;
        $today = Carbon::now('GMT+8')->toDateString();

        $books = Loan::all();
            $now = Carbon::now('GMT+8');
            foreach($books as $book){
                if($book->due_at < Carbon::now('GMT+8')){
                    $bookid = $book->bookid;
                    $penalty = Penalty::where('bookid',"=",$bookid)->first();
                    $loan = Loan::where('bookid',"=",$bookid)->first();
                        if($penalty == NULL){
                            $penalty = new Penalty();
                            $penalty->userid = $book->userid;
                            $penalty->bookid = $book->bookid;
                            $due = $book->due_at;
                        
                            $day = $now->diffInDays($due);
                            $penalty->day = $day;
                            $amount = $day*1.5;
                            $penalty->amount = $amount;
                            $penalty->save();

                            $loan->amount = $amount;
                            $loan->save();

                        
                        }else{
                            $due = $book->due_at;
                            $day = $now->diffInDays($due);
                            $penalty->day = $day;
                            $amount = $day*1.5;
                            $penalty->amount = $amount;
                            $penalty->save();

                            $loan->amount = $amount;
                            $loan->save();
                        
                        }
                        
                }
            }   

        $loan = Loan::where('userid',"=",$userid)
        ->join('books','books.bookid',"=",'loans.bookid')
        ->join('categorys','categorys.id',"=",'books.categoryid')
        ->join('languages','languages.id',"=",'books.languageid')
        ->select('loans.*','categorys.categoryname','languages.languagetype',
        'books.bookid','books.bookTitle','books.author','books.publisher','books.cover')
        ->orderBy('due_at','ASC')
        ->get();

        return \view('profile', \compact('loan', 'today'));
    }

    public function byuser(){
        $today = Carbon::now()->toDateString();

        $search_text = $_GET['query'];
        $loan =Loan::join('books','books.bookid',"=",'loans.bookid')
        ->join('categorys','categorys.id',"=",'books.categoryid')
        ->join('languages','languages.id',"=",'books.languageid')
        ->select('loans.*','categorys.categoryname','languages.languagetype',
        'books.bookid','books.bookTitle','books.author','books.publisher','books.cover')
        ->where('userid',"=",$search_text)
        ->orderBy('due_at','ASC')
        ->get();
        

        return \view('byuser', \compact('loan', 'today'));
    
    }

    
}
