

async function concluir(){

    var form = document.getElementById('formulario');
    var dados = new FormData(form);

    var promise = await fetch("php/concluir.php",{
        method: "POST",
        body: dados
    });

    var resposta = await promise.json();

    alert(resposta);
}