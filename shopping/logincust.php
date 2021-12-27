<?php
session_start();
//connection to database

include ('connection.php');
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>One Stop Kiosk - Customer</title>
	<link rel="stylesheet" href="admin/assets/css/bootstrap.css">
</head>
<body>

	

<br><br><br>
	<div class="container">
		<div class="row">
			 <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
			 	<br>
			 	
			 	<br>
			 	<br>
 <center><img src = "\azyan1\photo\logo1.png" name="image1" width="60%" height="60%"></center>
			 	<br>

				<div class="panel panel-default">
					<div class="panel-heading">
                  
               
              
                    <br>
						<center><h3 class="panel-title"><b>CUSTOMER LOGIN</b></h3></center>
					</div>
					<div class="panel-body">
						<form method="post">
							<div class="form-group">
								<label>Username</label>
								<input type="text" class="form-control" name="username">
							</div>
							<div class="form-group">
								<label>Password</label>
								<input type="password" class="form-control" name="password">
							</div>
							<center><button class="btn btn-primary" name="login">Login</button></center>
						</form>
                        <br><center><a href="registercust.php" target="_blank">Not register yet?</a></center>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<?php
if (isset($_POST["login"]))
{
	$username = $_POST["username"];
	$password = $_POST["password"];
	$ambil = $conn->query("SELECT * FROM customer
		WHERE username='$username' AND password='$password'");

	$accountvalid = $ambil->num_rows;

	if ($accountvalid==1)
	{
		$account = $ambil->fetch_assoc();
		$_SESSION["customer"] = $account;
		echo "<script>alert('SUCCESS LOG IN!');</script>";

		if (isset($_SESSION["cart"]) OR !empty($_SESSION["cart"]))
		{
			echo "<script>location='checkout.php';</script>";
		}
		else
		{
			echo "<script>location='index.php';</script>";
		}

	}
	else
	{
		echo "<script>alert('INVALID USERNAME OR PASSWORD!');</script>";
		echo "<script>location='logincust.php';</script>";
	}
}

?>

</body>
</html>
