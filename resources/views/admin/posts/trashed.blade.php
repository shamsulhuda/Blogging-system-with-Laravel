@extends('layouts.app')


@section('content')

<div class="card-header text-center">
      <h2>Trused posts</h2>
    </div>
<table class="table table-hover table-info shadow-sm p-3">
  <thead class="thead-light">
    <tr>
      <th scope="col">Image</th>
      <th scope="col">Title</th>
      <th scope="col">Restore</th>
      <th scope="col">Destroy</th>
    </tr>
  </thead>
  <tbody>
  	
    @if($posts->count() > 0)

    @foreach($posts as $post)
      <tr>
        <td><img src="/{{ $post->featured }}" alt="{{ $post->title }}" width="90px" height="50px"></td>
        <td>{{ $post->title }}</td>
        <td>
          <a href="{{ route('post.restore', ['id' => $post->id]) }}"><i class="fa fa-undo" style="color: blue;"></i></a>
        </td>
        <td>
          <a onclick="return confirm('Want to delete?');" href="{{ route('post.kill', ['id' => $post->id]) }}"><i class="fa fa-trash-alt" style="color: red;"></i></a>
        </td>
      </tr>
    @endforeach

    @else

      <tr>
         <th colspan="5" class="text-center">No Trashed Post available!</th>
      </tr>
     
    @endif
    
  </tbody>
</table>

@stop
