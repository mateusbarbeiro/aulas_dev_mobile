import 'dart:io';
void main(List<String> arguments) 
{

	print('''
Opcoes: 
---------------------------------
1 - Hello Word
2 - Verificacao se numero e par ou impar
3 - Calcular media de 4 valores
4 - Calcular idade 
	''');

	print('Opção: ');
	var option = int.tryParse(stdin.readLineSync()!);
	verifyIfCorrectIntInput(option);

	if (option == 1)
	{
		print('\nVoce selecionou a opcao 1 - Hello Word!\n');
		helloWord();
	}
	else if (option == 2)
	{
		print('\nVoce selecionou a opcao 2 - Verificacao se numero e par ou impar\n');
		evenOrOdd();
	}
	else if (option == 3)
	{
		print('\nVoce selecionou a opcao 3 - Calcular media de 4 valores\n');
		calculateAverage();
	}
	else if (option == 4)
	{
		print('\nVoce selecionou a opcao 4 - Calcular idade\n');
		calculateAge();
	}
	else
	{
		print('\nPor favor, digite uma opcao VALIDA.\n');
	}
}

void helloWord()
{
	print('Informe o seu nome: ');
	var name = stdin.readLineSync();
	print('\nHello world, $name!\n');
}

void evenOrOdd()
{
	print('Informe o numero a ser verificado:');
	var number = int.tryParse(stdin.readLineSync()!);
	verifyIfCorrectIntInput(number);
	if (number! % 2 == 0) 
	{
	  print('\nO numero $number é PAR!\n');
	} 
	else
	{
	  print('\nO numero $number é IMPAR!\n');
	}
}

void calculateAverage()
{
	print('Valor 1: ');
	var value1 = int.tryParse(stdin.readLineSync()!);
	verifyIfCorrectIntInput(value1);

	print('\nValor 2: ');
	var value2 = int.tryParse(stdin.readLineSync()!);
	verifyIfCorrectIntInput(value2);

	print('\nValor 3: ');
	var value3 = int.tryParse(stdin.readLineSync()!);
	verifyIfCorrectIntInput(value3);

	print('\nValor 4: ');
	var value4 = int.tryParse(stdin.readLineSync()!);
	verifyIfCorrectIntInput(value4);

	var average = (value1! + value2! + value3! + value4!) / 4;
	print('\nA media e de: $average \n');
}

void calculateAge()
{
	var date = DateTime.now();

	print('Que dia voce nasceu?');
	var day = int.tryParse(stdin.readLineSync()!);
	intInputIsWithinTheLimit(day, 0, 31);

	print('De qual mes?');
	var month = int.tryParse(stdin.readLineSync()!);
	intInputIsWithinTheLimit(month, 1, 12);

	print('Em qual ano?');
	var year = int.tryParse(stdin.readLineSync()!);
	intInputIsWithinTheLimit(year, 0, date.year);

	var birthday = DateTime(year!, month!, day!);
	var age = date.difference(birthday).inDays ~/ 365;

	print('\nVoce tem $age anos!\n');
}

void verifyIfCorrectIntInput(option)
{
	if (option == null)
	{
		print('\nPor favor, informe um valor VALIDO!\n');
		exit(0);
	}
}

void intInputIsWithinTheLimit(value, initialLimit, finalLimit)
{
	verifyIfCorrectIntInput(value);
	if (value < initialLimit || value > finalLimit)
	{
		print('\nValor fora do limite esperado!\n');
		exit(0);
	}
}