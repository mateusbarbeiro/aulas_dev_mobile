import 'dart:math' as math;
import 'package:intl/intl.dart';

void main(List<String> arguments) 
{
	// (1) uma função com parâmetro e sem retorno;
	evenOrOdd(4);

	// (2) uma função com parâmetro e com retorno;
	print(maxValue([5,1,3,9,6,4,7,8,2,1,5,11,30,27,18,1]));

	// (3) uma função sem parâmetro e sem retorno; 
	printDate();

	// (4) uma função sem parâmetro e sem retorno; 
	printTime();

	// (5) três funções com parâmetros nomeados;
	findVolume(length: 10, width: 5, height: 10);
	findIMC(height: 1.75, weight: 69.9);
	calculateTimesTables(value: 5);

	// (6) três exemplos de funções anônimas.
	// primeiro parametro função anonima de uma linha utilizando arrow function
	printValue(() => 4/2, title: "Quatro dividido por dois");

	// primeiro parametro função anonima para calcular circunferencia
	printValue(() {
		// c = 2 * pi * raio
		var r = 8; //metros
		var c = 2 * math.pi * r; 
		return c;
	}, 
		unitOfMeasure: "metros",
		title: "Circunferencia de raio de 8 metros"
	);

	// primeiro parametro função anonima para calcular potencia
	printValue(( ) {
		return math.pow(53,5);
	},
		title: "Calcular potencia"
	);
}

// 1 - verifica se numero é par ou impar
void evenOrOdd(double number)
{
	if (number % 2 == 0) 
	{
		print('O numero $number é PAR!');
	} 
	else 
	{
		print('O numero $number é IMPAR!');
	}
}

// 2 - busca maior numero inteiro de uma lista
int maxValue(List<int> numbers)
{
	var max = numbers[0];
	for (var item in numbers) {
		if (item > max)
		{
			max = item;
		}
	}

	return max;
}

// 3 - função que imprime no terminal o dia de hoje
void printDate()
{
	var today = DateTime.now();
	print(DateFormat('dd/MM/yyyy').format(today));
}

// 4 - função que imprime no terminal a hora atual
void printTime()
{
	var today = DateTime.now();
	print(DateFormat('HH:mm:ss').format(today));
}

// 5.1 - encontrar o volume de um prisma retangular
void findVolume({length, width, height})
{
	var volume = length * width * height;
	print("O volume é de $volume");
}

// 5.2 - encontrar o IMC e situação
void findIMC({weight, height})
{
 	var imc = weight / (height * height);
	var status = "";

	if (imc < 18.5)
	{
		status = "Magro";
	}
	else if (imc >= 18.5 && imc < 24.9)
	{
		status = "Normal";
	}
	else if (imc >= 24.9 && imc < 30)
	{
		status = "Sobrepeso";
	}
	else if (imc >= 30)
	{
		status = "Obesidade";
	}

	print("Seu IMC é de $imc kg/m2. Resultado: $status");
}

// 5.3 - calcular tabuada
void calculateTimesTables({value})
{
	print("\nTabuada do numero: $value");
	for (var i = 0; i <= 10; i++) 
	{
		var result = value * i;
		print("$value X $i = $result");
	}
	print("");
}

// 6 - funcao que recebe como parametro funcao anonima, titulo e unidade de medida e imprime no terminal
void printValue(Function function, {String unitOfMeasure = "", String title = ""})
{
	if (title!= "") 
	{
		print("\n$title");
	}

	var x = function();
	print("Valor: $x $unitOfMeasure");
}

// qual as características e as vantagens dos parâmetros nomeados e funções anônimas

/* 
- Parâmetros nomeados
são parametros que não dependem da posição em que são passados nas chamadas dos metodos. 
Indicamos na hora de chamar o método ou função o nome dos parâmetros e o valor a ser passado.
Sua utilização permite a escrita de um código de mais facil leitura e mais limpo. Além de não
ficarmos mais presos a posição em que o parâmetro foi declarado, gerando uma maior flexibilidade 
na escrita.

- Funções anônimas
são funções que não dependem de nomes, somente são declaradas e armazenadas em uma variável 
e/ou passadas por parametros. Sua vantagem é que podemos armazena-las e manipula-las como 
fazemos com variáveis, e assim, podemos envia-las como sendo um parâmetro de uma função e 
executa-la quando necessario. 
*/