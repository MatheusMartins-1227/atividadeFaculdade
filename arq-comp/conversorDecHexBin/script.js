/*      num_inserido = parseInt(num_inserido, 10);
        let decimal = num_inserido.toString(10);
        let binario = num_inserido.toString(2);
        let octal = num_inserido.toString(8);
        let hexa = num_inserido.toString(16); */



function converter(){
  var numeroDecimal = Number(numDecimal.value)
  divResultado.innerHTML = ``  

  if(numBinario.checked){
    var binario = numeroDecimal.toString(2);


    divResultado.innerHTML += `Numero binário = ${binario} <br>`
  }

  if(numOctal.checked){
    var octal = numeroDecimal.toString(8)

    divResultado.innerHTML += `Numero octal = ${octal} <br>`
  }

  if(numHexa.checked){
    var hexadecimal = numeroDecimal.toString(16)

    divResultado.innerHTML += `Numero em Hexadecimal = ${hexadecimal} <br>`
  }
}

