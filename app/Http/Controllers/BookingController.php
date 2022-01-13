<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Booking;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BookingController extends Controller
{
    public function booking(Request $request){
        $user = Auth::user()->id;
        $num = Booking::where('userid',"=",$user)->count();
        if($num>=3){
            return \redirect()->back()->with('warning','You had reached your booking limit.');
        }else{
            $booking = new Booking();
            $expired = Carbon::now()->addDays(3);

            $booking->userid = Auth::user()->id;
            $booking->bookid = $request->get('bookid');
            $booking->expired = $expired->toDateString();
            $booking->expired_at = Carbon::now()->addDays(3);
            $booking->save();

            return \redirect()->back()->with('session','Successfully booked the book');
        }
        
    }

    public function viewbooking(){
        $userid = Auth::user()->id;
        $now =  Carbon::now();
        $today = $now->toDateString();

        $booking = Booking::where('userid',"=",$userid)
        ->join('books','books.bookid',"=",'bookings.bookid')
        ->join('categorys','categorys.id',"=",'books.categoryid')
        ->join('languages','languages.id',"=",'books.languageid')
        ->select('bookings.userid','bookings.bookid','bookings.expired','categorys.categoryname','languages.languagetype',
        'books.bookid','books.bookTitle','books.author','books.publisher','books.cover')
        ->get();

        Booking::where('expired_at', '<', Carbon::now())->delete();
    

        return \view('viewbooking', \compact('booking', 'today'));
    }
}
