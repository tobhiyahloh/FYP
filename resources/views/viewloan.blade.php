<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard for Loan Book') }}
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
                <div class="p-2 bg-white border-b border-gray-200">
                    {{ $today }}
                    <br><br>
                    <form action="{{ url('/dashboard/viewloan/user') }}" method="GET">
                        <div class="input-group px-3">
                                            <input type="number" class=" rounded" placeholder="User ID" aria-label="Search"
                                            aria-describedby="search-addon" name="query" maxlength="5" size="10" min="1"/>
                                            &nbsp;
                                            <button type="button" class="btn btn-outline-secondary">Search</button>
                                        </div>
                    </form>
                    <div style="overflow-x:auto;">
                    <table class="px-1 table table-bordered table-striped" style="font-size: 14px">
                        <thead>
                            <tr>
                                <th>User ID</th>
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
                                <td>{{$row->userid}}</td>
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
                                <td>
                                    <a href="{{url('dashboard/return/'.$row->id)}}" class="btn btn-danger">Return</a>
                                </td>
                            </tr>
                            @else
                            <tr>
                                <td>{{$row->userid}}</td>
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
                                <td>
                                    <a href="{{url('dashboard/return/'.$row->id)}}" class="btn btn-danger">Return</a>
                                </td>
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
