$(document).ready(function(){
    $(window).scroll(function(){
        // sticky navbar on scroll script
        if(this.scrollY > 20){
            $('.navbar').addClass("sticky");
        }else{
            $('.navbar').removeClass("sticky");
        }
        
        // scroll-up button show/hide script
        if(this.scrollY > 500){
            $('.scroll-up-btn').addClass("show");
        }else{
            $('.scroll-up-btn').removeClass("show");
        }
    });

    // slide-up script
    $('.scroll-up-btn').click(function(){
        $('html').animate({scrollTop: 0});
        // removing smooth scroll on slide-up button click
        $('html').css("scrollBehavior", "auto");
    });

    $('.navbar .menu li a').click(function(){
        // applying again smooth scroll on menu items click
        $('html').css("scrollBehavior", "smooth");
    });

    // toggle menu/navbar script
    $('.menu-btn').click(function(){
        $('.navbar .menu').toggleClass("active");
        $('.menu-btn i').toggleClass("active");
    });

    // typing text animation script
    var typed = new Typed(".typing", {
        strings: ["Prático", "Funcional", "Agíl"],
        typeSpeed: 100,
        backSpeed: 60,
        loop: true
    });

    var typed = new Typed(".typing-2", {
        strings: ["Prático", "Funcional", "Agíl"],
        typeSpeed: 100,
        backSpeed: 60,
        loop: true
    });

    // owl carousel script
    $('.carousel').owlCarousel({
        margin: 20,
        loop: true,
        autoplay: true,
        autoplayTimeOut: 2000,
        autoplayHoverPause: true,
        responsive: {
            0:{
                items: 1,
                nav: false
            },
            600:{
                items: 2,
                nav: false
            },
            1000:{
                items: 3,
                nav: false
            }
        }
    });
});

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




