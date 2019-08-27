@extends('layouts.app')

@section('content')


@include('admin.includes.errors')

	<div class="card bg-default" id="formCat">
		<div class="card-header text-center">
			<h2>Edit Your profile</h2>
		</div>
		<div class="card-body">
			<form action="{{ route('user.profile.update') }}" method="post" enctype="multipart/form-data">
				{{ csrf_field() }}

				<div class="form-group">
					<label for="name">Username</label>
					<input type="text" name="name" value="{{ $user->name }}" class="form-control">
				</div>

				<div class="form-group">
					<label for="name">Email</label>
					<input type="email" name="email" value="{{ $user->email }}" class="form-control">
				</div>

				<div class="form-group">
					<label for="name">New password</label>
					<input type="password" name="password" class="form-control">
				</div>

				<div class="form-group">
					<label for="name">Upload new Avatar</label>
					<input type="file" name="avatar" class="form-control">
				</div>
				@if($user->profile !== NULL)
				<div class="form-group">
					<label for="name">Facebook profile</label>
					<input type="text" name="facebook" value="{{ $user->profile->facebook }}" class="form-control">
				</div>
				<div class="form-group">
					<label for="name">Youtube profile</label>
					<input type="text" name="youtube" value="{{ $user->profile->youtube }}" class="form-control">
				</div>
				<div class="form-group">
					<label for="name">Git profile</label>
					<input type="text" name="git" value="{{ $user->profile->git }}" class="form-control">
				</div>
				<div class="form-group">
					<label for="name">Twitter profile</label>
					<input type="text" name="twitter" value="{{ $user->profile->twitter }}" class="form-control">
				</div>
				<div class="form-group">
					<label for="about">About</label>
					<textarea class="form-control" name="about" id="about" cols="6" rows="6">{{ $user->profile->about }}</textarea>
				</div>
				@else
					<div class="form-group">
						<label for="name">Facebook profile</label>
						<input type="text" name="facebook" placeholder="e.g- https://facebook.com/username" class="form-control">
					</div>
					<div class="form-group">
						<label for="name">Youtube profile</label>
						<input type="text" name="youtube" placeholder="e.g- https://youtube.com/username" class="form-control">
					</div>
					<div class="form-group">
						<label for="name">Git profile</label>
						<input type="text" name="git" placeholder="e.g- https://git.com/username" class="form-control">
					</div>
					<div class="form-group">
						<label for="name">Twitter profile</label>
						<input type="text" name="twitter" placeholder="e.g- https://twitter.com/username" class="form-control">
					</div>
					<div class="form-group">
						<label for="about">About</label>
						<textarea class="form-control" name="about" id="about" cols="6" rows="6" placeholder="Write something about yourself"></textarea>
					</div>
				@endif
				
				<div class="text-center">
					<button class="btn btn-success" type="submit">Update profile</button>
				</div>
			</form>
		</div>
	</div>


@stop