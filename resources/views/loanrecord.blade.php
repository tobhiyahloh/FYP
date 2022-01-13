<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard for Loan Record') }}
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
                <div class="p-5 bg-white border-b border-gray-200">
                    <div style="overflow-x:auto;">
                    <table class="px-2 table table-bordered table-striped" style="font-size: 14px">
                        <thead>
                            <tr>
                                <th>Book ID</th>
                                <th>Cover</th>
                                <th>Book Title</th>
                                <th>Author</th>
                                <th>Publisher</th>
                                <th>Category</th>
                                <th>Language</th>
                                <th>Count</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($record as $row)
                            <tr>
                                <td>{{$row->bookid}}</td>
                                <td>
                                    <img src="{{asset('/storage/'.$row->cover)}}" width="70px"/>
                                </td>
                                <td>{{ $row->bookTitle }}</td>
                                <td>{{ $row->author }}</td>
                                <td>{{ $row->publisher }}</td>
                                <td>{{ $row->categoryname }}</td>
                                <td>{{ $row->languagetype }}</td>
                                <td>{{ $row->count }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    </div>
                    <div class="d-flex justify-content-center">
                        {!! $record->links() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
