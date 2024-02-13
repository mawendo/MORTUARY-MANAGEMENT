<?php include_once "includes/header.php"?>
	<body>
		<!-- Loader -->
		<div id="global-loader">
			<img src="assets/img/loader.svg" class="loader-img" alt="Loader">
		</div>
		<div class="page main-signin-wrapper" style="background-image:url(assets/images/bg/index.jpg)">
			<!-- Row -->
			<div class="row text-center pl-0 pr-0 ml-0 mr-0">
				<div class="col-lg-3 d-block mx-auto col-md-6 col-lg-6 col-xl-6">
					<div class="text-center mb-2">
						<img src="assets/img/brand/logo.png" class="header-brand-img" alt="logo">
						<img src="assets/img/brand/logo-light.png" class="header-brand-img theme-logos" alt="logo">
					</div>
					<div class="card custom-card">
						<div class="card-body">
							<h4 class="text-center">Sign into Your Account</h4>
							<form method="POST" action="engine/login.inc.php">
								<div class="form-group text-left">
									<label>Username</label>
									<input required name="username" class="form-control" placeholder="Enter your Username" type="text">
								</div>
								<div class="form-group text-left">
									<label>Password</label>
									<input required name="password" class="form-control" placeholder="Enter your password" type="password">
								</div>
								<button class="btn ripple btn-main-primary btn-block">Sign In</button>
							</form>
							<div class="mt-3 text-center">
								<p class="mb-1"><a href="#">Forgot password?</a></p>
								<p class="mb-0">Don't have an account? <a href="signup.php">Create an Account</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Row -->
		</div>
		<!-- End Page -->
<?php include_once "includes/footer.php"?>