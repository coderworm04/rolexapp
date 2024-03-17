<?php
    include("connection.php");
    if(mysqli_query($connection,"DELETE FROM products WHERE id=$_GET[id]"))
    {
        echo 
        "<script>
            alert('movie Deleted');
            window.location.href='fetch-movies.php';
        </script>";
    }
    
?>