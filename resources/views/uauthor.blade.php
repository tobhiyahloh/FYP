<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style>
    .center {
        display: block;
        margin-left: auto;
        margin-right: auto;
        width: 50%;
        }
</style>
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            @foreach ($book as $row )
                {{ $row->author }}
                @break
            @endforeach
           
            
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                
                <div class="container">
                    <div class="row">
                        @foreach ($book as $row )
                          <div class="col-md-3 py-3">
                            <div class="card w-150 h-100">
                                <img src="{{asset('/storage/'.$row->cover)}}" alt="cover" class="center">
                                <div class="card-body">
                                    <h5><a href="{{url('dashboard/udetail/book/'.$row->id)}}">{{ $row->bookTitle }}</a></h5>
                                    <small>{{ $row->author }}</small>
                                </div>
                            </div>
                        </div>  
                        @endforeach
                    </div>
                    
                </div>
            </div>                        
        </div>
    </div>
</x-app-layout>