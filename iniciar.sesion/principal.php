<?php
    session_start();
    if( $_SESSION['rol'] == "ADM"){
        echo "Bienvenido Administrador: ";
        echo $_SESSION['usuario'];
    }else{
    if( $_SESSION['rol'] == "Vendedor"){
        echo "Bienvenido a le sesion de ventas: ";
        echo $_SESSION['usuario'];
    }else{
        echo "Iniciar Secion";
        header('Location: iniciosesion.html');
    }
    }
?>