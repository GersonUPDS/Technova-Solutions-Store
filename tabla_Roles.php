<?php
    require_once "conexion.php";

    $id_usuarios = $_POST['Id_Usuario'];
    $cargo = $_POST['cargo'];
    $descripcion = $_POST['descripcion'];

    $sql = "INSERT INTO roles(id_usuario,cargo,descripcion) Value ('$id_usuarios','$cargo','$descripcion');";
    $conex-> query($sql);

    /*header('location: index.html');  */

?>