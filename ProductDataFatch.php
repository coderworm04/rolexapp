<?php

    include("connection.php");

    if(isset($_POST['category']))
    {
        $cat = $_POST['category'];
    }

    $query = "SELECT * FROM products where categories='$cat' order by name";

    $result = mysqli_query($connection,$query);

    $array = [];

    while($row = mysqli_fetch_assoc($result))
    {
        $array[] = $row; 
    }

    print(json_encode($array));
?>