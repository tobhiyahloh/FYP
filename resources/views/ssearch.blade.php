<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard for Book List') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        @if(\Session::has('status'))
        <div class="alert alert-success">
            <p>{{\Session::get('status')}}</p>
        </div>
        @endif
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    <form action="{{ url('/dashboard/showbook/ssearch') }}" method="GET">
                        <div class="input-group px-3">
                                            <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search"
                                            aria-describedby="search-addon" name="query"/>
                                            &nbsp;
                                            <button type="button" class="btn btn-outline-secondary">search</button>
                                        </div>
                    </form>
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                
                                <th>Book ID</th>
                                <th>Cover</th>
                                <th>Book Title</th>
                                <th>Author</th>
                                <th>Publisher</th>
                                <th>Category</th>
                                <th>Language</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($book as $row)
                            <tr>
                                
                                <td>{{$row->bookid}}</td>
                                <td>
                                    <img src="{{asset('/storage/'.$row->cover)}}" width="70px"/>
                                </td>
                                <td><a href="{{url('dashboard/detail/book/'.$row->id)}}">{{ $row->bookTitle }}</a></td>
                                <td><a href="{{ url('/dashboard/'.$row->author) }}">{{$row->author}}</a></td>
                                <td>{{$row->publisher}}</td>
                                <td>{{$row->categoryname}}</td>
                                <td>{{$row->languagetype}}</td>
                                <td>
                                    <a href="{{url('dashboard/editbook/'.$row->id)}}" class="btn btn-info">Edit</a>
                                </td>
                                <td>
                                    <a href="{{url('dashboard/deletebook/'.$row->id)}}" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="d-flex justify-content-center">
                        {!! $book->appends(Request::only('query'))->links() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
