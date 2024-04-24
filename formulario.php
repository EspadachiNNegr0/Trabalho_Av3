<?php

include("conexao.php"); // Adicionado ponto e vírgula no final da linha

// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Recupera os valores enviados pelo formulário
  $nome = $_POST["nome"];
  $email = $_POST["email"];
  $senha = $_POST["senha"];

  // Validação dos dados - exemplo básico
  if (empty($nome) || empty($email) || empty($senha)) {
    echo "Por favor, preencha todos os campos.";
  } else {
    // Prepara a consulta SQL usando prepared statement
    $stmt = $conn->prepare("INSERT INTO usuario (nome, email, senha) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $nome, $email, $senha);

    // Executa a consulta SQL
    if ($stmt->execute()) {
      echo "Cadastro realizado com sucesso!";
      echo '<meta http-equiv="refresh" content="3;url=login.html">'; 
    } else {
      echo "Erro ao cadastrar: " . $stmt->error;
    }
  }
}

// Fecha a conexão com o banco de dados
$conn->close();
