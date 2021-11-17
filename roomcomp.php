<?php
include'partial/_dbconnect.php';
if(isset($_POST['submit'])){
  $Issue_type=$_POST['Issue_type'];
  $Description_c=$_POST['Description_c'];
  $Time_From=$_POST['Time_From'];
  $Time_To=$_POST['Time_To'];

  $insertquery="INSERT INTO room_comp(Issue_type,Description_c,Time_From,Time_To)
   VALUES ('$Issue_type','$Description_c','$Time_From','$Time_To')";
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
<html lang="en">

<head>
 <meta name="viewport" content="width=device-width,initial scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <title>Home page</title>
 <link rel="stylesheet" href="style2.css">
</head>

<body>
	<div class="wrap">

		<table>
			<form action="" method="POST">
				<h1>ROOM COMPLAINT</h1>
				<tr><td style="font-size:25px" style="color:purple" name="Issue_type">Issue type:</td><td>
					<input type="radio" name="Issue_type" value="A.C Service">A.C Service<br>
					<input type="radio" name="Issue_type" value="Carpentery" style="font-size:25px">Carpentery<br>
					<input type="radio" name="Issue_type" value="Electrical" style="font-size:25px">Electrical<br>
					<input type="radio" name="Issue_type" value="Room cleaning" style="font-size:25px">Room cleaning<br>
					<input type="radio" name="Issue_type" value="Plumbing" style="font: size 25px">Plumbing<br>
					<input type="radio" name="Issue_type" value="others" style="font-size:25px">others<br>
					
				</td></tr>
				<tr><td style="font-size:25px">Time Slot</td><td>
					<input type="time" name="Time_From">
				</td><td>to</td><td>
					<input type="time" name="Time_To">
					</td></tr>
				<tr><td style="font-size:25px">Description</td><td>
					<input type="text" name="Description_c">
				</td></tr>
					<button type="submit" name="submit" style="font-size:20px">SUBMIT</button>
					<br><br>
                    <button type="back">
                <span>
                <a href="next.php"style="font-size:15px">BACK</a>
                </span></button><br><br>
				



		</table>
	</form>
</table>
<body background="img21.jpg">
</div>
</body>
</html>