@extends('layouts.app')


@section('content')

<div class="card-header text-center">
      <h2>Users</h2>
    </div>
<table class="table table-hover table-info" id="formCat">
  <thead class="thead-light">
    <tr>
      <th scope="col">Image</th>
      <th scope="col">Name</th>
      <th scope="col">Permissions</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  	@if($users->count() > 0)
      @foreach($users as $user)
      <tr>
        <td>
          {{-- <img src="{{asset($user->profile->avatar)}}" width="60px" height="60px" style="border-radius: 50%;"> --}}
          {{-- <img src="{{asset('uploads/avatars/1.png')}}" width="60px" height="60px" style="border-radius: 50%;"> --}}
          <img src="{{ asset($user->profile['avatar'] )}}" alt="" width="60px" height="60px" style="border-radius: 50%;">
        </td>
        <td>
          {{ $user->name }}
        </td>
        <td>
          
          @if($user->admin)

          <a href="{{route('user.not.admin',['id' => $user->id])}}" class="btn btn-sm btn-outline-danger">Remove permission</a>

          @else

          <a href="{{route('user.admin',['id' => $user->id])}}" class="btn btn-sm btn-outline-primary">Make admin</a>

          @endif

        </td>
        <td>
          @if(Auth::id() !== $user->id)

            <a onclick="return confirm('Want to Delete this user?');" href="{{ route('user.delete', ['id' => $user->id]) }}"><i class="fa fa-trash-alt" style="color: red;"></i></a>
            @else
            <button type="button" class="btn btn-sm btn-primary" disabled>Admin</button>
          @endif
        </td>
      </tr>
    @endforeach
    @else
        <tr>
           <th colspan="5" class="text-center">No users available!</th>
        </tr>
    @endif
    
  </tbody>
</table>

@stop
