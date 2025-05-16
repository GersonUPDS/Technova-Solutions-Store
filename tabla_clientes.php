<?php
    require_once "conexion.php";

    $nombre_cliente= $_POST['nombre cliente'];
    $email = $_POST['email'];
    $telefono = $_POST['telefono'];
    $direccion = $_POST['direccion'];

    $sql = "INSERT INTO cliente(nombre cliente,email,telefono , direccion) Value ('$nombre_cliente','$email','$telefono','$direccion');";
    $conex-> query($sql);

    /*header('location: index.html');  */

?>