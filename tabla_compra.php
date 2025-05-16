<?php
    require_once "conexion.php";

    $id_proveedor= $_POST['id provee'];
    $metodo_pago = $_POST['metodo pago'];
    $estado_compra = $_POST['estado compra'];
    $importe_total = $_POST['importe total'];
    $fecha_compras = $_POST['fecha compras'];
    $id_usuario = $_POST['id usuario'];

    $sql = "INSERT INTO compras(id provee,metodo pago,estado compra , importe total, fecha compras, id usuario) Value ('$id_proveedor','$metodo_pago','$estado_compra','$importe_total','$fecha_compra','$id_usuario');";
    $conex-> query($sql);

    /*header('location: index.html');  */

?>