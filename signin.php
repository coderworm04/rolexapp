<?php

    include("$connection.php");
    
    if(isset($_POST['email']))
   {
    $email = $_POST['email'];
   }
   if(isset($_POST['password']))
   {
    $password = $_POST['password'];
   }

   $query = "SELECT * FROM `tbl_signup` WHERE email = '$email' AND password='$password'";
   
   $result = mysqli_query($connection,$query);

   $arr=[];

   if(mysqli_num_rows($result) >0)
   {
    $arr["success"]="true";
   }
   else
   {
   $arr["success"]="false";
   }

   print(json_encode($arr));


?> 
