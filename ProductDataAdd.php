<?php


   include("connection.php");

   if(isset($_POST['name']))
   {
    $name = $_POST['name'];
   }
   if(isset($_POST['description']))
   {
    $description = $_POST['description'];
   }
   if(isset($_POST['rating']))
   {
    $rating = $_POST['rating'];
   }
   if(isset($_POST['categories']))
   {
    $categories = $_POST['categories'];
   }
   if(isset($_POST['price']))
   {
    $price = $_POST['price'];
   }

   $query = "INSERT INTO products(name,description,poster_image,rating,categories,price) VALUES 
   ('$name','$description','null','$rating','$categories','$price')";

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