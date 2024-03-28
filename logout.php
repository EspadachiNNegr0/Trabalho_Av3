<?php
// Iniciar a sessão (se ainda não estiver iniciada)
session_start();

// Encerrar a sessão
session_destroy();

// Redirecionar para a página de login
header("Location: login.php");
exit();
?>
