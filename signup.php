<?php include_once "includes/header.php";
$login_rank =$_GET["rank"] ?? '4';

 ?>
	<body>
		<div id="global-loader">
		<img src="../assets/img/loader.svg" class="loader-img" alt="Loader">
		</div>
		<div class="page main-signin-wrapper">
			<div class="row text-center pl-0 pr-0 ml-0 mr-0">
				<div class="col-lg-3 d-block mx-auto col-md-6 col-lg-6 col-xl-6">
					<div class="text-center mb-2">
						<img src="assets/img/brand/logo.png" class="header-brand-img" alt="logo">
						<img src="assets/img/brand/logo-light.png" class="header-brand-img theme-logos" alt="logo">
					</div>
					<div class="card custom-card ">
						<div class="card-body">
							<h4 class="text-center">Signup to Your Account</h4>
							<form method="POST" action="engine/signup.inc.php">
								<div class="form-group text-left">
									<label>First Name</label>
									<input require name="login_first_name" class="form-control" placeholder="Enter your First Name" type="text">
								</div>
								<div class="form-group text-left">
									<label>Last Name</label>
									<input require name="login_last_name"class="form-control" placeholder="Enter your Last Name" type="text">
								</div>
								<div class="form-group text-left">
									<label>Username</label>
									<input require name="login_username" class="form-control" placeholder="Enter your Email" type="text">
								</div>
								<div class="form-group text-left">
									<label>Email</label>
									<input require name="login_email" class="form-control" placeholder="Enter your Email" type="text">
								</div>
								<div class="form-group text-left">
									<label>Password</label>
									<input require name="login_password" class="form-control" placeholder="Enter your password" type="password">
								</div>
								<div class="form-group text-left">
									<label>Repeat Password</label>
									<input require name="password_repeat" class="form-control" placeholder="Retype password" type="password">
								</div>
								<input name="login_rank" value="<?php echo $login_rank?>" type="hidden">
								<button class="btn ripple btn-main-primary btn-block">Create Account</button>
							</form>
							<div class="mt-3 text-center">
								<p class="mb-0">Already have an account? <a href="index.php">Sign In</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Row -->

		</div>
		<!-- End Page -->

	<?php include_once "includes/footer.php"?>