<?php
    $server='localhost';
    $username="root";
    $password="";
    $database='logindetails';

    $conn= mysqli_connect($server,$username,$password,$database);
    if($conn){
        //echo"connection success";
        ?>
        <script>
            alert('connection successful');
            </script>
            <?php
        }
        else{
            die("sorry we fail to connect:".mysqli_connect_error());
        }
?>
             