<?php
//Maneja la validación del usuario. 
session_start();
require '../TECHNOVASOLUTIONS2025/LOGIN/conexion.php';

$mensaje_error = ""; // Variable para almacenar el mensaje de error

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM Usuario WHERE Email = ?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$email]);
    $usuario = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($usuario && password_verify($password, $usuario['Contrasena'])) {
        $_SESSION['user_id'] = $usuario['Id_Usuario'];
        $_SESSION['role'] = $usuario['Cargo'];
        header("Location: ../TECHNOVASOLUTIONS/LOGIN/dashboard.php");
        exit;
    } else {
      $mensaje_error = "⚠️ Usuario o contraseña incorrectos.";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portada Minimalista</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            background-color: #111;
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
            text-align: center;
        }
        .logo {
            width: 150px;
            margin-bottom: 20px;
        }
        h1 {
            font-size: 2.5rem;
            font-weight: bold;
        }
        p {
            font-size: 1.2rem;
            margin-top: 10px;
            opacity: 0.8;
        }
        .button {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 1rem;
            color: #111;
            background-color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }
        .button:hover {
            background-color: #ccc;
        }
        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.7);
            justify-content: center;
            align-items: center;
            opacity: 0;
            transition: opacity 0.5s ease-in-out;
        }
        .login-form {        /* aqui modifico*/
            background: #222;  /* aqui cambias el color del formularioa*/
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(236, 204, 204, 0.2);
            transform: translateY(-50px);
            opacity: 0;
            transition: transform 0.5s ease-in-out, opacity 0.5s ease-in-out;
        }
        .login-form input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
        .login-form button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #fff;
            color: #111;
            cursor: pointer;
            font-size: 16px;
        }
        .login-form button:hover {
            background-color: #ccc;
        }
        .overlay.show {
            display: flex;
            opacity: 1;
        }
        .overlay.show .login-form {
            transform: translateY(0);
            opacity: 1;
        }

        .error {    /* mensaje emergente*/
            color: red;
            font-weight: bold;
            margin-top: 10px;
            background: #f8d7da;
            padding: 10px;
            border-radius: 5px;
            display: inline-block;
        }
    </style>
    <script>
        function showLoginForm() {
            document.getElementById("overlay").classList.add("show");
        }
        function closeLoginForm(event) {
            if (event.target.id === "overlay") {
                document.getElementById("overlay").classList.remove("show");
            }
        }
    </script>
</head>
<body>

    <img src="logo2.png" alt="Logo" class="logo">
    <h1>Bienvenido a Nuestro Sistema de Ventas</h1>
    <p>Optimiza tus ventas con nuestra plataforma eficiente y segura.</p>
    <button class="button" onclick="showLoginForm()">Comenzar</button>
    
    <div id="overlay" class="overlay" onclick=" (event)">
        <div class="login-form">
            <h2>Iniciar Sesión</h2>
            <form method="POST">
                <input type="email" name="email" placeholder="Usuario" required>
                <input type="password" name="password" placeholder="Contraseña" required>
                <button type="submit">Comenzar</button>
            </form>
            
            <!-- Mostrar el mensaje de error si existe -->
            <?php if (!empty($mensaje_error)): ?>
            <p class="error"><?php echo $mensaje_error; ?></p>
            <?php endif; ?>
        </div>
    </div>
           

</body>
</html>

