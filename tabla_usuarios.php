<?php
    require_once "conexion.php";

    $email = $_POST['email'];
    $contraseña = $_POST['contraseña'];
    $id_personal = $_POST['id_personal'];
    

    $sql = "INSERT into usuario(email,contraseña,id_personal) Value ('$email','$contraseña','$id_personal');";
    $conex-> query($sql);

    /*header('location: index.html');  */

?>