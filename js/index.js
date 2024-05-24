// Array para armazenar os URLs
var urls = [];

function addTodo() {
    var input = document.getElementById("busca");
    var url = input.value.trim(); // Remove espaços em branco extras

    if (url !== "") {
        // Verifica se a URL já existe no array
        if (urls.includes(url)) {
            alert("Esta URL já foi adicionada!");
            return;
        }

        // Adiciona a URL ao array
        urls.push(url);

        // Adiciona a URL à lista de tarefas na tela
        var listItem = document.createElement("li");
        var link = document.createElement("a");
        link.href = url;
        link.target = "_blank";
        link.textContent = url;
        listItem.appendChild(link);

        document.getElementById("todo-list").appendChild(listItem);

        // Limpa o campo de entrada após adicionar a tarefa
        input.value = "";
    } else {
        alert("Por favor, insira uma URL válida.");
    }
}

const search = document.querySelector('.search');
const btn = document.querySelector('.btn');

btn.addEventListener('click', () => {
    const url = 'https://www.google.com.br/search?q=' + search.value;
    window.open(url,'_self');
})
search.addEventListener('keypress', function(e) {
    if(e.key === "Enter"){
        const url = 'https://www.google.com.br/search?q=' + search.value;
        search.click();
        window.open(url,'_self');
    }
})
