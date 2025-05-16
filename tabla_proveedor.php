<?php
    require_once "conexion.php";

    $nombre_proveedor= $_POST['nombre provee'];
    $tipo_proveedor = $_POST['tipo provee'];
    $estado = $_POST['estado'];

    $sql = "INSERT into proveedor(nombre provee,tipo provee,estado) Value ('$nombre_proveedor','$tipo_proveedor','$estado');";
    $conex-> query($sql);

    /*header('location: index.html');  */

?>