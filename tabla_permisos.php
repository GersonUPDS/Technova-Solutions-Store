<?php
    require_once "conexion.php";

    $cargo = $_POST['cargo'];
    $descripcion = $_POST['descripcion'];

    $sql = "INSERT INTO persmiso(cargo,descripcion) Value ('$cargo','$descripcion');";
    $conex-> query($sql);

    /*header('location: index.html');  */

?>