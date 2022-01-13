<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
    .form-group{
        width: 100%;
        border-radius: 10px;
        
    }
    table{
        text-align: center;
    }
    input[type=text]{
        border-radius: 10px;
    }
    select{
        border-radius: 10px;
        padding: 16px 20px;
        background-color: #f1f1f1;
    }
    .custom-select{
      width:auto;
      margin-right: 5px;
      margin-left: 10px;
    }
    .inline-group {
      width:48%;
      margin-right: 5px;
    }
    div.form
    {
        display: block;
        text-align: center;
    }
    form
    {
        display: inline-block;
        margin-left: auto;
        margin-right: auto;
        text-align: left;
    }
   
</style>
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard for Edit Book') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                
                <div class="p-6 bg-white border-b border-gray-200">
                @if(count($errors) > 0)
        <div class="alert alert-danger">
            <ul>
                @foreach($errors->all() as $error)
                <li>{{$error}}</li>
                @endforeach
            </ul>
        </div>
        @endif
        @if(\Session::has('success'))
        <div class="alert alert-success">
            <p>{{\Session::get('success')}}</p>
        </div>
        @endif
        <div class="form">

        
        <form method="post" action="/dashboard/editbook/{{$book->id}}" enctype="multipart/form-data">
        {{csrf_field()}}
        @method('PUT')
        <div class="form-group">
            <input type="text" name="bookid" class="form-control" value="{{ $book->bookid }}"/>
        </div>
        <div class="form-group">
            <input type="text" name="isbn" class="form-control" value="{{ $book->isbn }}"/>
        </div>
        <div class="form-group">
            <input type="text" name="bookTitle" class="form-control" value="{{ $book->bookTitle }}"/>
        </div>
        <div class="form-group" >
            <input type="text" name="author" class="inline-group" value="{{ $book->author }}"/>

            <input type="text" name="publisher" class="inline-group" value="{{ $book->publisher }}"/>
        </div>
        <div class="form-group">
            <textarea name="bookDetail" class="form-control"  rows="4" cols="50" style="resize:none">{{ $book->bookDetail }}</textarea>
        </div>
        <div class="form-group">
            <input type="text" name="year" class="form-control" value="{{ $book->year }}"/>
        </div>
        <div class="form-group" >
            <label for="bookCategory">Book's Category: </label>
            <select name="categoryid" id="categoryid" class="custom-select">
                <option style="display: none;"></option>
                <option value="1">Literature</option>
                <option value="2">Fiction</option>
                <option value="3">Religion</option>
                <option value="4">Science</option>
                <option value="5">Suspense</option>
                <option value="6">Self-Enhancement</option>
                <option value="7">Children</option>
                <option value="8">Novel</option>
                <option value="9">Technology and Engineering</option>
                <option value="10">Martial Art (Wuxia)</option>
                <option value="11">Poem</option>
                <option value="12">History</option>
            </select>
           
        <label for="bookLanguage">Book's Language: </label>
            <select name="languageid" id="languageid" class="custom-select">
            <option style="display: none;"></option>
                <option value="1">Chinese</option>
                <option value="2">English</option>
                <option value="3">Bahasa Melayu</option>
            </select>
        </div>
        @if($book->cover)
            <img src="{{asset('/storage/'.$book->cover)}}" alt="cover" width="200"/>
        @endif
        <div class="form-group">
            <input type="file" name="cover"/>
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-primary"/>
        </div>
        </form>
        </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
