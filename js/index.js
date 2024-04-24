 // Array para armazenar os URLs
 var urls = [];

 function addTodo() {
   var input = document.getElementById("busca");
   var url = input.value.trim(); // Remove espaços em branco extras

   if (url !== "") {
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
   }
 }