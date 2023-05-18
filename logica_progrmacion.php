<?php

// ejercicio numero 1
// retornar el numero 23

function metodoX($n) {
    $suma = 0;
    for ($i=1; $i < $n; $i++) { 
        if ($i % 3 == 0 || $i % 5 == 0) {
            $suma += $i;
        }
    }
    return $suma;
};
$numero = 10;
$resultado = metodoX($numero);
echo $resultado, "<br>";

// ejercicio numero 2

function metodoY($frase) {
    $palabras = explode(" ", $frase, 1);
    foreach($palabras as &$palabra){
        if (strlen($palabra) > 5) {
            $palabra = strrev($palabra);
        }
    }
    return implode(" ", $palabras);
};

$frase = "Bienvenido a Treda Solutions";
$resultado2 = metodoY($frase);

echo $resultado2;

?>
