@extends('layouts.app')


@section('content')

<div class="card-header text-center">
      <h2>Tags</h2>
    </div>
<table class="table table-hover table-info" id="formCat">
  <thead class="thead-light">
    <tr>
      <th scope="col">Tags Name</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  	@if($tags->count() > 0)
    @foreach($tags as $tag)
      <tr>
        <td>{{ $tag->tag }}</td>
        <td>
          <a href="{{ route('tag.edit', ['id' => $tag->id]) }}"><i class="fa fa-pen" style="color: info;"></i></a>
        </td>

        <td>
          {{-- <a href="{{ route('category.delete', ['id' => $category->id]) }}"><i class="fa fa-trash-alt" style="color: red;"></i></a> --}}
          
          <a onclick="return confirm('Want to delete?');" href="{{ route('tag.delete', ['id' => $tag->id]) }}"><i class="fa fa-trash-alt" style="color: red;"></i></a>
        </td>

      </tr>
    @endforeach

    @else
      <tr>
         <th colspan="5" class="text-center">No Tags available yet!</th>
      </tr>
    @endif
    
  </tbody>
</table>

@stop
