<?php
//Una página protegida que muestra contenido según el rol.
require 'auth.php';
autenticarUsuario();
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página TechNova Solutions</title>
    <link rel="stylesheet" href="index.css">    
</head>

<body>
    
    <h1>Bienvenido al Dashboard</h1>
    <p>Bienvenido: <?php echo $_SESSION['role']; ?></p> <!--aqui muestra el rol del usuario-->

    <?php 
    echo verificarPermiso('Gestionar usuarios') ? "Permiso activo" : "Sin permiso";
    echo verificarPermiso('Gestionar inventario') ? "Permiso activo" : "Sin permiso";
    echo verificarPermiso('Ver reportes') ? "Permiso activo" : "Sin permiso";
    echo verificarPermiso('Registrar ventas') ? "Permiso activo" : "Sin permiso";
    ?>
    
    <?php if (verificarPermiso('Gestionar usuarios')): ?>
        <a href="../LOGIN/usuarios.php">Gestionar Usuarios</a>
    <?php endif; ?>

    <?php if (verificarPermiso('Gestionar inventario')): ?>
        <a href="inventario.php">Gestionar Inventario</a>
    <?php endif; ?>

    <?php if (verificarPermiso('Ver reportes')): ?>
        <a href="ver_reportes.php">Ver Reportes</a>
    <?php endif; ?>

    <?php if (verificarPermiso('Registrar ventas')): ?>
        <a href="../tabla_Ventas.html">Registrar Ventas</a>
    <?php endif; ?>

 <!-- Botón de Cerrar Sesión -->
    <br><br>
    <a href="logout.php">Cerrar Sesión</a>

</body>
</html>

