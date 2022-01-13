<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard for user') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                   
                    Welcome {{Auth::user()->name}}<br>
                    Your email: {{Auth::user()->email}} <br><br>
                    {{ $today }}
                    <br><br>
                    Current Issued Books
                    <div style="overflow-x:auto;">
                    <table class="px-2 table table-bordered table-striped" style="font-size: 14px">
                        <thead>
                            <tr>
                                <th>Book ID</th>
                                <th>Cover</th>
                                <th>Book Title</th>
                                <th>Author</th>
                                <th>Publisher</th>
                                <th>Issued Date</th>
                                <th>Due Date</th>
                                <th>Fine</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($loan as $row)
                            @if ($row->amount != NULL)
                            <tr style="background-color:#f87c7c">
                                
                                <td>{{$row->bookid}}</td>
                                <td>
                                    <img src="{{asset('/storage/'.$row->cover)}}" width="70px"/>
                                </td>
                                <td>{{ $row->bookTitle }}</td>
                                <td>{{ $row->author }}</td>
                                <td>{{ $row->publisher }}</td>
                                <td>{{ $row->createdate }}</td>
                                <td>{{ $row->duedate }}</td>
                                <td>RM{{ $row->amount }}</td>
                                
                            </tr>
                            @else
                            <tr>
                                
                                <td>{{$row->bookid}}</td>
                                <td>
                                    <img src="{{asset('/storage/'.$row->cover)}}" width="70px"/>
                                </td>
                                <td>{{ $row->bookTitle }}</td>
                                <td>{{ $row->author }}</td>
                                <td>{{ $row->publisher }}</td>
                                <td>{{ $row->createdate }}</td>
                                <td>{{ $row->duedate }}</td>
                                <td>-</td>
                                
                            </tr>
                            @endif
                            @endforeach
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>