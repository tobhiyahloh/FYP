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
      margin-right: 0px;
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
            {{ __('Dashboard for Add new Book') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                <h3 align="center">Current Book</h3>
                <br>
                <div style="overflow-x:auto;">
                <table class="table table-bordered" style="width:100%; font-size: 12px;">
                    <tr>
                        <td>[1] Literature</td><td>[2] Fiction</td><td>[3] Religion</td> <td>[4] Science</td><td>[5] Suspense</td><td>[6] Self-Enhancement</td> <td>[7] Children</td><td>[8] Novel</td><td>[9] Tech and Engineering</td><td>[10] Martial Art (Wuxia)</td><td>[11] Poem</td><td>[12] History</td>
                    </tr>
                    <tr>
                        <td>{{$bookcategory[0]}}</td><td>{{$bookcategory[1]}}</td> <td>{{$bookcategory[2]}}</td> <td>{{$bookcategory[3]}}</td><td>{{$bookcategory[4]}}</td><td>{{$bookcategory[5]}}</td><td>{{$bookcategory[6]}}</td> <td>{{$bookcategory[7]}}</td><td>{{$bookcategory[8]}}</td> <td>{{$bookcategory[9]}}</td><td>{{$bookcategory[10]}}</td><td>{{$bookcategory[11]}}</td>
                    </tr>
                </table>
                </div>
                <p style="font-size: 12px;"> Total books: {{$bookcategory[12]}}</p>
                </div>
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

        
        <form method="post" action="/dashboard/addbook" enctype="multipart/form-data">
        {{csrf_field()}}
        <div class="form-group">
            <input type="text" name="bookid" class="form-control" placeholder="Book ID"/>
        </div>
        <div class="form-group">
            <input type="text" name="isbn" class="form-control" placeholder="ISBN"/>
        </div>
        <div class="form-group">
            <input type="text" name="bookTitle" class="form-control" placeholder="Book Title"/>
        </div>
        <div class="form-group" >
            <input type="text" name="author" class="inline-group" placeholder="Author"/>

            <input type="text" name="publisher" class="inline-group" placeholder="Publisher"/>
        </div>
        <div class="form-group">
            <textarea name="bookDetail" class="form-control" placeholder="Book Details" rows="4" cols="50" style="resize:none"></textarea>
        </div>
        <div class="form-group">
            <input type="text" name="year" class="form-control" placeholder="Year of Published"/>
        </div>
        <div class="form-group" >
            <label for="bookCategory">Book's Category: </label>
            <select name="categoryid" id="categoryid" class="custom-select">
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
                <option value="1">Chinese</option>
                <option value="2">English</option>
                <option value="3">Bahasa Melayu</option>
            </select>
        </div>
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
