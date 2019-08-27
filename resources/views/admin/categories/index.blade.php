@extends('layouts.app')


@section('content')

<div class="card-header text-center">
      <h2>Categories</h2>
    </div>
<table class="table table-hover table-info" id="formCat">
  <thead class="thead-light">
    <tr>
      <th scope="col">Category Name</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  	@if($categories->count() > 0)
    @foreach($categories as $category)
      <tr>
        <td>{{ $category->name }}</td>
        <td>
          <a href="{{ route('category.edit', ['id' => $category->id]) }}"><i class="fa fa-pen" style="color: info;"></i></a>
        </td>

        <td>
          {{-- <a href="{{ route('category.delete', ['id' => $category->id]) }}"><i class="fa fa-trash-alt" style="color: red;"></i></a> --}}
          
          <a onclick="return confirm('Want to delete?');" href="{{ route('category.delete', ['id' => $category->id]) }}"><i class="fa fa-trash-alt" style="color: red;"></i></a>
        </td>

      </tr>
    @endforeach

    @else
      <tr>
         <th colspan="5" class="text-center">No Categories available!</th>
      </tr>
    @endif
    
  </tbody>
</table>

@stop
