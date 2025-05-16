<?php
    require_once "conexion.php";

    $nombre_promo = $_POST['nombre promo'];
    $descripcion = $_POST['descripcion'];
    $descuento = $_POST['descuento'];
    $fecha_inicio = $_POST['fecha inicio'];
    $fecha_fin = $_POST['fecha fin'];

    $sql = "INSERT into promociones(nombre promo, descripcion, descuento, fecha inicio, fecha fin) Value ('$nombre_promo','$descripcion','$descuento','$fecha_inicio','$fecha_fin');";
    $conex-> query($sql);

    /*header('location: index.html');  */

?>