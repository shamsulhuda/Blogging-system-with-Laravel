@extends('layouts.app')

@section('content')


@include('admin.includes.errors')

	<div class="card bg-info" id="formCat">
		<div class="card-header text-center text-white">
			<h2>Settings</h2>
		</div>
		<div class="card-body text-white">
			<form action="{{ route('settings.update') }}" method="post">
				{{ csrf_field() }}

				<div class="form-group">
					<label for="name">Site Name</label>
					<input type="text" name="site_name" value="{{ $settings->site_name }}" class="form-control">
				</div>

				<div class="form-group">
					<label for="name">Address</label>
					<input type="text" name="address" class="form-control" value="{{ $settings->address }}">
				</div>
				
				<div class="form-group">
					<label for="name">Contact number</label>
					<input type="text" name="contact_number" class="form-control" value="{{ $settings->contact_number }}">
				</div>
				<div class="form-group">
					<label for="name">Contact Email</label>
					<input type="text" name="contact_email" class="form-control" value="{{ $settings->contact_email }}">
				</div>
				<div class="form-group">
					<label for="name">FAQ</label>
					<textarea class="form-control" cols="6" rows="6" name="faq">{{ $settings->faq }}</textarea>
				</div>

				<div class="text-center">
					<button class="btn btn-success" type="submit">Update site settings</button>
				</div>
			</form>
		</div>
	</div>


@stop