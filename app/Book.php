<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $fillable = [
        'bookid', 'isbn', 'bookTitle', 'author', 'publisher', 'bookDetail', 'categoryid', 'languageid', 'year','cover','status'
    ];
}
?>