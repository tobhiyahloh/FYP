<?php

namespace App\Http\Controllers;

use App\Book;
use App\Models\Loan;
use App\Models\Booking;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class BookController extends Controller
{
    public function create()
    {
        $l = DB::table('books')->where('categoryid','1')->count();
        $f = DB::table('books')->where('categoryid','2')->count();
        $r = DB::table('books')->where('categoryid','3')->count();
        $sc = DB::table('books')->where('categoryid','4')->count();
        $s = DB::table('books')->where('categoryid','5')->count();
        $se = DB::table('books')->where('categoryid','6')->count();
        $c = DB::table('books')->where('categoryid','7')->count();
        $n = DB::table('books')->where('categoryid','8')->count();
        $te = DB::table('books')->where('categoryid','9')->count();
        $w = DB::table('books')->where('categoryid','10')->count();
        $p = DB::table('books')->where('categoryid','11')->count();
        $h = DB::table('books')->where('categoryid','12')->count();


        $total = DB::table('books')->count();

        $bookcategory = array($l,$f,$r,$sc,$s,$se,$c,$n,$te,$w,$p,$h,$total);
        return view('addbook',compact('bookcategory'));
        
    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'bookid' => 'required',
            'isbn' => 'required|digits:13',
            'bookTitle' => 'required',
            'author' => 'required',
            'publisher' => 'required',
            'bookDetail' => 'required',
            'categoryid' => 'required',
            'languageid' => 'required',
            'year' => 'required',
            'cover' => 'required'
        ]);
        $filename = $request->file('cover')->getClientOriginalName();
        $book = new Book([
            'bookid' => $request->get('bookid'),
            'isbn' => $request->get('isbn'),
            'bookTitle' => $request->get('bookTitle'),
            'author' => $request->get('author'),
            'publisher' => $request->get('publisher'),
            'bookDetail' => $request->get('bookDetail'),
            'categoryid' => $request->get('categoryid'),
            'languageid' => $request->get('languageid'),
            'year' => $request->get('year'),
            'cover' => $request->cover->storeAs('cover',$filename,'public')
        ]);

        $book->save();
        return redirect()->route('dashboard.addbook')->with('success', 'Book Added Successfully.');
    }

    public function edit($id)
    {
        $book = Book::find($id);
        return view('editbook', \compact('book'));
    }

    public function update(Request $request, $id)
    {
        $book = Book::find($id);
        $book->bookid = $request->input('bookid');
        $book->isbn = $request->input('isbn');
        $book->bookTitle = $request->input('bookTitle');
        $book->author = $request->input('author');
        $book->publisher = $request->input('publisher');
        $book->bookDetail = $request->input('bookDetail');
        $book->categoryid = $request->input('categoryid');
        $book->languageid = $request->input('languageid');
        $book->year = $request->input('year');

        if($request->hasFile('cover')){
            $destination = 'storage/'.$book->cover;
            if(File::exists($destination)){
                File::delete($destination);
            }
            $file = $request->file('cover');
            $filename = $file->getClientOriginalName();
            $book->cover = $request->cover->storeAs('cover',$filename,'public');
        }

        $book->update();
        
        return redirect()->route('dashboard.showbook')->with('status', "Book Updated Successfully");
    }

    public function delete($id){
        $book = Book::find($id);
        $destination = 'storage/'.$book->cover;
        if(File::exists($destination)){
            File::delete($destination);
        }
        $book ->delete();
        return redirect()->route('dashboard.showbook')->with('status', "Book Deleted Successfully");

    }

    public function search(){
        $search_text = $_GET['query'];
        $book = Book::where('bookTitle', 'LIKE','%'.$search_text.'%')
        ->orWhere('author', 'LIKE','%'.$search_text.'%')
        ->get();

        return \view('search', \compact('book'));
    }

    public function ssearch(){
        $search_text = $_GET['query'];
        $book =Book::join('categorys','categorys.id',"=",'books.categoryid')
        ->join('languages','languages.id',"=",'books.languageid')
        ->select('books.*', 'categorys.categoryname','languages.languagetype')
        ->orderby('id')->where('bookTitle', 'LIKE','%'.$search_text.'%')
        ->orWhere('author', 'LIKE','%'.$search_text.'%')
        ->orWhere('bookid', 'LIKE','%'.$search_text.'%')
        ->orWhere('categoryname', 'LIKE','%'.$search_text.'%')
        ->orWhere('languagetype', 'LIKE','%'.$search_text.'%')
        ->paginate(10);
        

        return \view('ssearch', \compact('book'));
    }

    public function detail($id){
        $book = Book::join('categorys','categorys.id',"=",'books.categoryid')
        ->join('languages','languages.id',"=",'books.languageid')
        ->select('books.*', 'categorys.categoryname','languages.languagetype')
        ->find($id);
        /*
        get(['books.id','books.bookid','books.isbn','books.bookTitle','books.author','books.publisher','books.bookDetail','categorys.categoryname','languages.languagetype','books.year','books.cover','books.status'])->where('id',$id);
        */
        return \view('detail', \compact('book'));
    }

    public function udetail($id){
        $book = Book::join('categorys','categorys.id',"=",'books.categoryid')
        ->join('languages','languages.id',"=",'books.languageid')
        ->select('books.*', 'categorys.categoryname','languages.languagetype')
        ->find($id);
        /*
        get(['books.id','books.bookid','books.isbn','books.bookTitle','books.author','books.publisher','books.bookDetail','categorys.categoryname','languages.languagetype','books.year','books.cover','books.status'])->where('id',$id);
        */
        $check_loan = $book->bookid;
        $checkloan = Loan::where('bookid',"=",$check_loan)->first();

        $check_book = $book->bookid;
        $checkbook = Booking::where('bookid',"=", $check_book)->first();
        return \view('udetail', \compact('book','checkloan','checkbook'));
    }

    public function author($author){
        $book = Book::join('categorys','categorys.id',"=",'books.categoryid')
        ->join('languages','languages.id',"=",'books.languageid')
        ->select('books.*', 'categorys.categoryname','languages.languagetype')
        ->where('books.author','=',$author)
        ->get();

        return view('author', \compact('book'));
    }

    public function uauthor($author){
        $book = Book::join('categorys','categorys.id',"=",'books.categoryid')
        ->join('languages','languages.id',"=",'books.languageid')
        ->select('books.*', 'categorys.categoryname','languages.languagetype')
        ->where('books.author','=',$author)
        ->get();

        return view('uauthor', \compact('book'));
    }
}
