<?php

// Configuração do banco de dados

$servername = "localhost";
$username = "root";
$password = "25254";
$dbname = "formulario_login";
$port = 2912;

// Cria uma conexão com o banco de dados
$conn = new mysqli($servername, $username, $password, $dbname, $port);

// Verifica se ocorreu algum erro na conexão
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

?>