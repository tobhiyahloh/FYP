<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard for Loan Book') }}
        </h2>
    </x-slot>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    
                    @if(\Session::has('success'))
                    <div class="alert alert-success">
                        <p>{{\Session::get('success')}}</p>
                    </div>
                    @endif
                    @if(\Session::has('danger'))
                    <script>
                        swal("{{ Session::get('danger') }}");
                    </script>
                    @endif
    
                    <form action="{{ url('/dashboard/loanbook') }}" method="post">
                        {{csrf_field()}}
                        <div class="form-group">
                            <input type="text" name="userid" class="form-control" placeholder="Insert User ID" required/>
                        </div>
                        <div class="form-group">
                            <input type="text" name="bookid" class="form-control" placeholder="Insert Book ID" required/>
                        </div>
                            <div class="form-group">
                                <input type="submit" class="btn btn-primary"/>
                            </div>
                        </div>
                    </form>
        <div>
           
        </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>



