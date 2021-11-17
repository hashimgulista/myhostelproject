<?php
include'partial/_dbconnect.php';
if(isset($_POST['submit'])){
  $Hygiene=$_POST['Hygiene'];
  $Food_Quality=$_POST['Food_Quality'];
  $Speed_of_Preperation=$_POST['Speed_of_Preperation'];
  $Employee_Attitude=$_POST['Employee_Attitude'];

  $insertquery="INSERT INTO mess_feed(Hygiene,Food_Quality,Speed_of_Preperation,Employee_Attitude)
   VALUES ('$Hygiene','$Food_Quality','$Speed_of_Preperation','$Employee_Attitude')";
  $res=mysqli_query($conn,$insertquery);

  if($res){
    ?>
    <script>
      alert("INSERTED SUCCESSFULLY");
      </script>
      <?php
  }else{
    ?>
    <script>
      alert("NOT INSERTED");
      </script>
      <?php

  }
}
?>
<DOCTYPE html>
<html lang="en">

<head>
 <meta name="viewport" content="width=device-width,initial scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <title>Home page</title>
 <link rel="stylesheet" href="style1.css">
</head>

<body>
	<div class="wrap">
		<body background="img21.jpg">
		<table>
			<form action="" method="POST">
				<h1>MESS FEEDBACK</h1>
				<tr><th>S.No.</th><th>Questions</th><th>Response</th></tr>
				<tr><td>1</td><td>Hygiene</td><td>
					<input type="text" name="Hygiene">
					
				</td></tr>
				<tr><td>2</td><td>Food quality</td><td>
					<input type="text" name="Food_Quality">
					
				</td></tr>
				<tr><td>3</td><td>Speed of preperation</td><td>
					<input type="text" name="Speed_of_Preperation">
				</td></tr>
				<tr><td>4</td><td>Employee attitude</td><td>
					<input type="text" name="Employee_Attitude">
				</td></tr>
				
					<button type="submit" name="submit">SUBMIT</button>
					<br><br>
                    <button type="back">
                <span>
                <a href="next.php">BACK</a>
                </span></button><br><br>
				



		</table>
	</form>
</table>
</div>
</body>
</html>

