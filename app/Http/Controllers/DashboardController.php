<?php

namespace App\Http\Controllers;
use App\Book;
use Illuminate\Support\Facades\Auth;
use Illuminate\Contracts\Pagination\Paginator;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;

class DashboardController extends Controller
{
    public function index(){
        if(Auth::user()->hasRole('administrator')){
            return view('dashboard');
        }
        elseif(Auth::user()->hasRole('user')){
            $book = Book::join('categorys','categorys.id',"=",'books.categoryid')
            ->join('languages','languages.id',"=",'books.languageid')
            ->select('books.*', 'categorys.categoryname','languages.languagetype')->paginate(12);

            return view('userdash', compact('book'));
        }
    }
    
    public function profile(){
        return view('profile');
    }
/*
    public function addbook(){
        return view('addbook');
    }
*/
    public function showbook(){
        $book = Book::join('categorys','categorys.id',"=",'books.categoryid')
        ->join('languages','languages.id',"=",'books.languageid')
        ->select('books.*', 'categorys.categoryname','languages.languagetype')->orderby('id')->paginate(10);
        /*
        get(['books.id','books.bookid','books.isbn','books.bookTitle','books.author','books.publisher','books.bookDetail','categorys.categoryname','languages.languagetype','books.year','books.cover','books.status'])->sortby('id')->paginate(10);
        */
        

        return view('showbook',compact('book'));
    }

    public function displaybook(){
        //$book = Book::
    }
}
