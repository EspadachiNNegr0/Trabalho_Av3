<?php

// Array associativo para armazenar os dados dos usuários
$usuarios = array(
    "acreemerson@gmail.com" => array("nome" => "Emerson", "senha" => "12345678"),
    "erick@gmail.com" => array("nome" => "Erick", "senha" => "12345657"),
    "Marx@gmail.com" => array("nome" => "Marx", "senha" => "45318957"),
    "teste@teste.com" => array("nome" => "Edu", "senha" => "1234567")
);



// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recupera os valores enviados pelo formulário
    $email = $_POST["email"];
    $senha = $_POST["senha"];


    // Verifica se o email existe no array de usuários e se a senha está correta
if (array_key_exists($email, $usuarios) && $usuarios[$email]["senha"] == $senha) {
  // Se o login for bem-sucedido, redireciona o usuário para a página principal
  header("Location: indexPrincipal.html");
  exit;
} else {
  // Se o login falhar, exibe uma mensagem de erro usando JavaScript
  echo '<script>alert("Email ou senha inválidos!"); window.location.href = "login.html";</script>';
}

}

?>






