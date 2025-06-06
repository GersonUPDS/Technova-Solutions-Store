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
    <link rel="stylesheet" href="../index.css"> <!--cambiar css-->
</head>
<body>
    <header class="navbar">
        <div class="logo">
          <img src="../logo2.png" alt="TechNova">
        </div>
        <nav>
            <ul class="nav-links">
                <li><a href="#">Inicio</a></li>

                <li>
                    <?php if (verificarPermiso('Gestionar usuarios')): ?>
                    <a href="#">Gestionar Usuarios</a>
                    <?php endif; ?>
                    <ul class="submenu">
                        <li><a href="../LOGIN/usuarios.php">Gestionar Usuarios</a></li>
                        <li><a href="tabla_Roles.html">Roles</a></li>
                    </ul>
                </li>
                <li>
                    <?php if (verificarPermiso('Gestionar Inventario')): ?>
                    <a href="#">Gestionar Inventario</a>
                    <?php endif; ?>
                    <ul class="submenu">
                        <li><a href="../LOGIN/usuarios.php">Productos</a></li>
                        <li><a href="tabla_Roles.html">Compras</a></li>
                        <li><a href="tabla_promociones.html">Proveedores</a></li>
                    </ul>
                </li>
                <li>
                    <?php if (verificarPermiso('Ver reportes')): ?>
                    <a href="#">Ver reportes</a>
                    <?php endif; ?>
                    <ul class="submenu">
                        <li><a href="../LOGIN/usuarios.php">Detalle de Ventas</a></li>
                        <li><a href="tabla_Roles.html">Reportes de inventario</a></li>
                        
                    </ul>
                </li>
                <li>
                    <?php if (verificarPermiso('Registrar ventas')): ?>
                    <a href="#">Registrar ventas</a>
                    <?php endif; ?>
                    <ul class="submenu">
                        <li><a href="../LOGIN/usuarios.php">Ventas</a></li>
                        <li><a href="tabla_Roles.html">Promociones</a></li>
                        
                    </ul>
                </li>
                <li><a href="#">Soporte</a></li>
            </ul>
        </nav>
    </header>

    <section class="hero">
        <h1>TechNova Solutions</h1>
        <p><h2 style="font-size: 24px; color: white;">Bienvenido: <?php echo $_SESSION['role'];?></h2></p> <!--aqui muestra el rol del usuario-->
        <div class="buttons">
            
            <a href="../LOGIN/logout.php" class="btn buy">Cerrar Sesion</a>
        </div>
        <div class="phone-image">
            <img src="../logo2.png" alt="iPhone 16 Pro">
        </div>
    </section>
</body>
</html>