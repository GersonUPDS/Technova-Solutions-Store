<?php
    require_once "conexion.php";

    $id_venta= $_POST['id venta'];
    $id_producto = $_POST['id producto'];
    $cantidad = $_POST['cantidad'];
    $subtotal = $_POST['subtotal'];

    $sql = "INSERT into detalle_venta(id venta,id producto,cantidad , subtotal) Value ('$id_venta','$id_producto','$cantidad','$subtotal');";
    $conex-> query($sql);

    /*header('location: index.html');  */

?>