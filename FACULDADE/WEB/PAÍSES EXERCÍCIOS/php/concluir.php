<?php

    $pais = $_POST["pais"];

    //$escolha = strlen($pais);

    $mensagem = "";


    if ( $escolha = "brasil" ){
        $mensagem = "Real";
    }
    else if($escolha = "eua"){ 
        $mensagem = "Dólar";
    }
    else if($escolha = "eu"){
        $mensagem = "Euro";
    }

    $json = json_encode($mensagem);

    echo $json;




?>
