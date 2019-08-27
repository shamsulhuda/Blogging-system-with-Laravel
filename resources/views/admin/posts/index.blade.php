@extends('layouts.app')


@section('content')

<div class="card-header text-center">
      <h2>Published Posts</h2>
    </div>
<table class="table table-hover table-info" id="formCat">
  <thead class="thead-light">
    <tr>
      <th scope="col">Image</th>
      <th scope="col">Title</th>
      
      <th scope="col">Edit</th>
      <th scope="col">Trash</th>
    </tr>
  </thead>
  <tbody>
  	@if($posts->count() > 0)
      @foreach($posts as $post)
      <tr>
        <td><img src="/{{ $post->featured }}" alt="{{ $post->title }}" width="90px" height="50px"></td>
        <td>{{ $post->title }}</td>
        
        <td><a href="{{ route('post.edit', ['id' => $post->id]) }}"><i class="fa fa-pen" style="color: success;"></i></a></td>
        <td>
          <a onclick="return confirm('Want to Trush?');" href="{{ route('post.delete', ['id' => $post->id]) }}"><i class="fa fa-trash-alt" style="color: red;"></i></a>
        </td>
      </tr>
    @endforeach
    @else
        <tr>
           <th colspan="5" class="text-center">No Published Post available!</th>
        </tr>
    @endif
    
  </tbody>
</table>

@stop
