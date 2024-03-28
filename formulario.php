<?php

include("conexao.php"); // Adicionado ponto e vírgula no final da linha

// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Recupera os valores enviados pelo formulário
  $nome = $_POST["nome"];
  $email = $_POST["email"];
  $senha = $_POST["senha"];

  // Prepara a consulta SQL para inserir os dados no banco de dados
  $sql = "INSERT INTO usuarios (nome, email, senha) VALUES ('$nome', '$email', '$senha')";

  // Executa a consulta SQL
  if ($conn->query($sql) === TRUE) {
    echo "Cadastro realizado com sucesso!";
    echo '<meta http-equiv="refresh" content="3;url=login.php">'; 
  } else {
    echo "Erro ao cadastrar: " . $conn->error;
  }
}

// Fecha a conexão com o banco de dados
$conn->close();

/*
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de cadastro</title>
</head>
<body>
    <div class="box">
        <form action="formulario.php" method="post" enctype="multipart/form-data"> <!-- Movido o fechamento para depois do conteúdo do formulário -->
            <fieldset>
                <legend><b>Formulário de cadastro</b></legend>
                <br>
                <div class="inputBox">
                    <input type="text" name="nome" id="nome" class="inputUser" required>
                    <label for="nome" class="labelInput">Nome Completo</label>
                </div>
                <br><br>
                <div class="inputBox">
                    <input type="text" name="email" id="email" class="inputUser" required>
                    <label for="email" class="labelInput">Email</label> <!-- Corrigido o atributo "for" para apontar para o campo de email -->
                </div>
                <br><br>
                <div class="inputBox">
                    <input type="password" name="senha" id="senha" class="inputUser" required>
                    <label for="senha" class="labelInput">Senha</label>
                </div>
                <br><br>
                <input type="submit" value="cadastrar" id="submit">
                
            </fieldset>
        </form> 
    </div>
    </div>
</body>
</html>

*/