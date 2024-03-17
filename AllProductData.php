<?php

    include("connection.php");

    $query = "SELECT * FROM products";

    $result = mysqli_query($connection,$query);

    $array = [];

    while($row = mysqli_fetch_assoc($result))
    {
        $array[] = $row; 
    }

    print(json_encode($array));
?>