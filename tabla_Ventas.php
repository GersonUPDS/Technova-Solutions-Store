<?php
    require_once "conexion.php";

    $id_usuario= $_POST['id usuario'];
    $id_cliente = $_POST['id cliente'];
    $fecha_venta = $_POST['fecha venta'];
    $total = $_POST['total'];

    $sql = "INSERT INTO venta(id usuario,id cliente,fecha venta, total) Value ('$id_usuario','$id_cliente','$fecha_venta','$total');";
    $conex-> query($sql);

    /*header('location: index.html');  */

?>