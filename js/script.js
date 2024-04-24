const container = document.getElementById('container');
const registerBtn = document.getElementById('register');
const loginBtn = document.getElementById('login');

// Adiciona uma classe para ativar o formulário de registro
registerBtn.addEventListener('click', () => {
    container.classList.add("active");
    loginBtn.classList.remove("active");
});


loginBtn.addEventListener('click', () => {
    container.classList.remove("active");
    registerBtn.classList.remove("active");
});

// Supondo que você tenha uma variável chamada userEmail que armazena o email do usuário
const userEmail = "edu.sgf29@gmail.com"; // Substitua pelo email real do usuário

// Função para definir o ícone com base no email do usuário
function setUserIcon(email) {
    const userIcon = document.getElementById("userIcon");
    let iconSrc = ""; // Caminho para a imagem do ícone

    // Lógica para determinar o ícone com base no email
    // Aqui você pode usar um switch, if-else, ou outra lógica de sua preferência
    // Neste exemplo, definimos o ícone com base no domínio do email
    if (email.includes("@gmail.com")) {
        iconSrc = "gmail_icon.png";
    } else {
        iconSrc = "default_icon.png";
    }

    // Define o atributo src da imagem com o caminho do ícone
    userIcon.src = iconSrc;
}

// Chamada da função para definir o ícone do usuário
setUserIcon(userEmail);
