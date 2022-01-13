<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<style>
    .container{
        margin-left: 10%;
        align-content: center;
    }
    .center {
        display: block;
        margin-left: auto;
        margin-right: auto;
        width: 100%;
        }
    table{
        font-size: 1.2em;
    }
    td{
        padding-inline-start: 10px;
    }
</style>
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ $book->bookTitle }}
        </h2>
    </x-slot>
<div class="container">
    <div class="row">
          <div class="col-md-3 py-3">
            <div class="card w-150 h-100">
                <img src="{{asset('/storage/'.$book->cover)}}" alt="cover" class="center">
                
            </div>
        </div> 
        <div class="col-md-7 py-3">
            <div class="card-body">
                <table>
                    <tr>
                        <td>Author</td>
                        <td>: {{ $book->author }}</td>
                    </tr>
                    <tr>
                        <td>Publisher</td> 
                        <td>: {{ $book->publisher }}</td>                      
                    </tr>
                    <tr>
                        <td>Language</td>
                        <td>: {{ $book->languagetype }}</td>                        
                    </tr>
                    <tr>
                        <td>Category</td>
                        <td>: {{ $book->categoryname }}</td>
                    </tr>
                    <tr>
                        <td>Year of Published</td>
                        <td>: {{ $book->year }}</td>
                    </tr>
                </table>
                <p class="py-3" style="font-weight: bold">{{ $book->bookDetail }}</p>
            </div>
            
        </div> 
    </div>
    
</div>
</x-app-layout>
