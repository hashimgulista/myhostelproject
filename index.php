<?php
include'partial/_dbconnect.php';
if(isset($_POST['submit'])){
  $username=$_POST['username'];
  $password=$_POST['password'];
  $insertquery="INSERT INTO `logins` (`username`, `password`) VALUES ('$username', '$password')";
  $result=mysqli_query($conn,$insertquery);

  if($result){
    ?>
    <script>
      alert("logged in");
      </script>
      <?php
      header("Location:next.php");
  }else{
    ?>
    <script>
      alert("not logged in");
      </script>
      <?php

  }
}
?>
<!DOCTYPE html>    
<html>    
<head>    
    <title>LOGIN FORM</title>    
    <link rel="stylesheet" href="style.css">
    </head> 
<body> 
    <h1 style="text-align:center">WELCOME STUDENTS<h1>
    <h2>LOGIN PAGE</h2><br>    
    <div class="login">    
    <form id="login" method="POST">    
        <label><b>User Name     
        </b>    
        </label>    
        <input type="text" name="username" id="t1" placeholder="Username">    
        <br><br>    
        <label><b>Password     
        </b>    
        </label>    
        <input type="Password" name="password" id="t2" placeholder="Password">    
        <br><br>
        <button type="submit" class="btn btn-primary col-md-6" name="submit" onclick="registration()">Submit</button>
           
    </form>     
</div> 
</body>    
</html>







