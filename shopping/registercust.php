<?php include ('connection.php'); ?>
<!DOCTYPE html>
<html>
<head>
	<title>Register - Customer</title>
	<link rel="stylesheet" href="admin/assets/css/bootstrap.css">
</head>
<body>

<br><br>
	<div class="container">
		<div class="row">

                <center><img src = "\azyan1\photo\logo1.png" name="image1" width="20%" height="20%"></center>
<br>
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
					<div class="panel-heading">
                   
              
                    <br>
						<center><h3 class="panel-title"><b>CUSTOMER REGISTRATION</h3></b></center>
					</div>
					<div class="panel-body">
						<form method="post" class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-md-3">First Name</label>
								<div class="col-md-7">
									<input type="text" class="form-control" name="firstName" required>
								</div>
							</div>
                            <div class="form-group">
                                                                 <div class="form-group">
								<label class="control-label col-md-3">Last Name</label>
								<div class="col-md-7">
									<input type="text" class="form-control" name="lastName" required>
								</div>
							</div>
                            <div class="form-group">
                                                           <div class="form-group">
								<label class="control-label col-md-3">Username</label>
								<div class="col-md-7">
									<input type="text" class="form-control" name="username" required>
								</div>
							</div>
                            <div class="form-group">
								<label class="control-label col-md-3">Email</label>
								<div class="col-md-7">
									<input type="email" class="form-control" name="email" required>
								</div>
							</div>
  <div class="form-group">
								<label class="control-label col-md-3">Password</label>
								<div class="col-md-7">
									<input type="password" class="form-control" name="password" required>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3">Phone Number</label>
								<div class="col-md-7">
									<input type="text" class="form-control" name="number" required>
								</div>
							</div>
          
							<div class="form-group">
								<div class="col-md-7 col-md-offset-3">
									<center><button class="btn btn-primary" name="registration">Register</button></center>
								</div>
							</div>
						</form>
						<?php
							if (isset($_POST["registration"]))
							{
								$firstName = $_POST["firstName"];
								$lastName = $_POST["lastName"];
                                                                $username = $_POST["username"];
								$email = $_POST["email"];
								$password = $_POST["password"];
								$number = $_POST["number"];
								
								$ambil = $conn->query("SELECT * FROM customer WHERE username='$username'");
								$yangcocok = $ambil->num_rows;
								if($yangcocok==1)
								{
									echo "<script>alert('Registration failed because username have been used');</script>";
									echo "<script>location='registercust.php';</script>";
								}
								else
								{
									$conn->query("INSERT INTO customer(firstName,lastName,username,email,password,number)
									VALUES('$firstName','$lastName','$username','$email','$password','$number')");

									echo "<script>alert('Registration success. Please log in');</script>";
									echo "<script>location='logincust.php';</script>";

								}

							}
						?>
					</div>
				</div>
			</div>
		</div>
	</div>


	</body>
	</html>

