<?php
    require_once "conexion.php";

    $nombres = $_POST['nombre'];
    $apellidos = $_POST['apellidos'];
    $domicilio = $_POST['direccion'];
    $telefono = $_POST['telefono'];
    $fecha_nacimiento = $_POST['fecha_nacimiento'];
    $género = $_POST['género'];
    $estado_civil = $_POST['estado_civil'];

    $sql = "INSERT INTO personal(nombre,apellidos,direccion,telefono,fecha_nacimiento,género,estado_civil) VALUE ('$nombres','$apellidos','$domicilio','$telefono','$fecha_nacimiento','$género','$estado_civil');";
    $conex-> query($sql);

    /*header('location: index.html');  */
?>