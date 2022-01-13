<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('View Booking') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                   
                    Welcome {{Auth::user()->name}}<br><br>
                   
                    {{ $today }}
                    <br><br>
                    Current Booking Books
                    <div style="overflow-x:auto;">
                    <table class="px-2 table table-bordered table-striped" style="font-size: 14px">
                        <thead>
                            <tr>
                                <th>Book ID</th>
                                <th>Cover</th>
                                <th>Book Title</th>
                                <th>Author</th>
                                <th>Publisher</th>
                                <th>Expired Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($booking as $row)
                            <tr>
                                <td>{{$row->bookid}}</td>
                                <td>
                                    <img src="{{asset('/storage/'.$row->cover)}}" width="70px"/>
                                </td>
                                <td>{{ $row->bookTitle }}</td>
                                <td>{{ $row->author }}</td>
                                <td>{{ $row->publisher }}</td>
                                <td>{{ $row->expired }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>