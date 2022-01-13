<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\LoanController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

/*Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');*/

//auth route for both
Route::group(['middleware'=>['auth']],function(){
    Route::get('/dashboard','App\Http\Controllers\DashboardController@index')->name('dashboard');
});

//for users
Route::group(['middleware'=>['auth', 'role:user']],function(){
    Route::get('/profile','App\Http\Controllers\LoanController@userprofile')->name('profile');
    Route::get('/viewbooking','App\Http\Controllers\BookingController@viewbooking')->name('viewbooking');
    Route::get('/dashboard/search', 'App\Http\Controllers\BookController@search');
    Route::get('/dashboard/udetail/book/{id}', [BookController::class, 'udetail']);
    Route::get('/dashboard/u/{author}', 'App\Http\Controllers\BookController@uauthor');
    Route::post('/dashboard/booking', [BookingController::class, 'booking']);
});

//for admin
Route::group(['middleware'=>['auth', 'role:administrator']],function(){
    Route::get('/dashboard/addbook','App\Http\Controllers\BookController@create')->name('dashboard.addbook');
    Route::get('/dashboard/showbook','App\Http\Controllers\DashboardController@showbook')->name('dashboard.showbook');
    Route::get('/dashboard/loanbook','App\Http\Controllers\LoanController@loanbook')->name('dashboard.loanbook'); 
    Route::get('/dashboard/viewloan','App\Http\Controllers\LoanController@viewloan')->name('dashboard.viewloan'); 
    Route::get('/dashboard/loanrecord','App\Http\Controllers\LoanController@loanrecord')->name('dashboard.loanrecord'); 
    Route::get('dashboard/editbook/{id}',[BookController::class, 'edit']);
    Route::put('dashboard/editbook/{id}', [BookController::class, 'update']);
    Route::get('dashboard/deletebook/{id}',[BookController::class, 'delete']);
    Route::get('/dashboard/showbook/ssearch', [BookController::class, 'ssearch']);
    Route::get('/dashboard/viewloan/user', [LoanController::class, 'byuser']);
    Route::get('/dashboard/detail/book/{id}', 'App\Http\Controllers\BookController@detail');
    Route::get('/dashboard/{author}', 'App\Http\Controllers\BookController@author');
    Route::post('dashboard/addbook','App\Http\Controllers\BookController@store');
    Route::post('dashboard/loanbook/','App\Http\Controllers\LoanController@loan');
    Route::get('dashboard/return/{id}',[LoanController::class, 'return']);


});

//Route::post('dashboard/addbook','App\Http\Controllers\BookController@store');
//Route::get('/dashboard/loanbook/userloan',[LoanController::class, 'get_user'])->name('dashboard.loanbook.userloan');

require __DIR__.'/auth.php';
