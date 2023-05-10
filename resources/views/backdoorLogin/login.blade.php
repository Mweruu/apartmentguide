<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- CSRF Token -->
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<title>BackDoor Login</title>
	<!-- Styles -->
	<link rel="shortcut icon" href="/images/favicon.ico">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
</head>
<body>
	<div id="wrapper">
		<div class="content-page">
			<div class="content">
				<div class="container-fluid">
					<h3 class="text-white pt-5">Login Form</h3>
					<form action="{{ route('backdoor.generateLink') }}" name="frmbackdoorlogin" id="frmbackdoorlogin" method="post">
						@csrf
						<div class="row justify-content-center align-items-center">
							<div class="col-lg-4">
								@if ($errors->any())
									<div class="alert alert-danger">
										<ul>
											@foreach ($errors->all() as $error)
												<li>{{ $error }}</li>
											@endforeach
										</ul>
									</div>
								@else 
									@if(session()->has('error'))
										<div class="alert alert-danger">
											{{ session()->get('error') }}
										</div>
									@endif
								@endif
							</div>
						</div>
						<div id="login-row" class="row justify-content-center align-items-center">
							<div class="col-lg-4">
								 <div class="form-group">
									<label for="email">Username:</label><br>
									<input type="text" name="email" id="email" class="form-control">
								</div>
								<div class="form-group">
									<label for="password">Password:</label><br>
									<input type="password" name="password" id="password" class="form-control">
								</div>
								<div class="form-group">
									<label for="ynyUser">Choose User</label><br>
									<select name="loginUser" class="form-control" id="ynyUser">
										<option value="">Choose User</option>
										@foreach($userListArr as $key => $userInfo)
											<option value="{{ $userInfo->email }}">{{ $userInfo->name }} {{ $userInfo->last_name }}</option>
										@endforeach
									</select>
								</div>
								<div class="form-group">
									<input type="submit" name="submit" class="btn btn-danger btn-block" value="submit">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div><!-- END wrapper -->
</body>
</html>