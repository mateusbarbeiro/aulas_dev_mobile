/*
(1) três exemplos de funções assíncronas e um texto explicativo 
do que é future, await e async e para que serve a programação 
assíncrona;
*/

import 'dart:async';
import 'dart:io';
import 'package:intl/intl.dart';

void main(List<String> arguments) async
{
  // ex 1
  await request(true);

  // ex 2
  await readTxt();

  // ex 3 
  await printDateTime();
}

// 1 - simulação de uma requisição a um servidor,
// dependendo do parametro retorna sucesso ou não
Future request(bool success) {
  print('waiting for request');
  return Future.delayed(Duration(seconds: 5), () => {
    success ? print("- Result: Success\n") : print("- Result: Fail\n")
  });
}

// 2 - leitura e impressão de conteudo do arquivo txt
Future readTxt() {
  return Future.delayed(Duration(seconds: 2), () => {
    File("Text.txt")
      .readAsString()
      .then((content) => print(content + '\n'))
  });
}

// 3 - imprime data e hora atual
Future printDateTime() {
  return Future.delayed(Duration(seconds: 3), () => {
    print(DateFormat('dd/MM/yyyy HH:mm:ss\n').format(DateTime.now()))
  });
}

// a classe Future é utilizada para representar um potencial valor, 
// ou erro que estará disponivel em algum momento no futuro. É similar a 
// classe Promisse em javaScript. 

// os termos async(assíncrono) e await(aguardar) são utilizados para declarar uma chamada de 
// uma função assincrona, desta forma, possibilitando usar o resultado 
// processado e/ou recebido na função assincrona. O async é utilizado 
// na declaração da função, ates do corpo desta, e o await é utilizado 
// antes da chamada da função asincrona da qual se espera o processamento 
// assincrono.