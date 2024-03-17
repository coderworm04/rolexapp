<?php
   
   include("connection.php");

   if(isset($_POST['name']))
   {
    $name = $_POST['name'];
   }
   if(isset($_POST['email']))
   {
    $email = $_POST['email'];
   }
   if(isset($_POST['password']))
   {
    $password = $_POST['password'];
   }
   if(isset($_POST['retypepassword']))
   {
    $retypepassword = $_POST['retypepassword'];
   }

   $query = "INSERT INTO `tbl_signup`(`name`, `email`, `password`, `retype_pass`) VALUES ('$name', '$email', '$password', '$retypepassword')";

   $result = mysqli_query($connection,$query);

   $arr=[];

   if($result)
   {
    $arr["success"]="true";
   }
   else
   {
    $arr["success"]="false";
   }

   print(json_encode($arr));


?>