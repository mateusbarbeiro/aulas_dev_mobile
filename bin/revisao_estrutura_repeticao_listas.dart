import 'dart:io';
import 'package:aulas_dev_mobile/aulas_dev_mobile.dart';

void main(List<String> arguments) 
{
	var products = [];
	while (true)
	{
		print('\n----------------Lista de compras----------------');
		print('1 - Adicionar novo item a lista');
		print('2 - Remover um item da lista por ID');
		print('3 - Listar produtos');
		print('4 - Sair');
		print('------------------------------------------------');

		print('\nOpção: ');
		var option = int.tryParse(stdin.readLineSync()!);
		verifyIfInputIsNull(false, option);

		if (option == 1)
		{
			print('\nNome do produto: ');
			var newProduct = stdin.readLineSync();
			if (!verifyExistsInList(products, newProduct))
			{
				products.add(newProduct);
				print('\nProduto adicionado com SUCESSO.');
			}
			else
			{
				print('\nProduto ja foi adicionado anteriormente.');
			}
		}
		else if (option == 2)
		{
			if (products.isNotEmpty)
			{
				print('\n--------------------Produtos--------------------');
				products.asMap()
					.forEach((key, value) => print('$key - $value'));
				print('------------------------------------------------');

				print('\nDigite o ID do produto a ser excluido:');
				var index = int.tryParse(stdin.readLineSync()!);
				var exists = intInputIsWithinTheLimit(index, 0, products.length-1, false);

				if (exists)
				{
					products.removeAt(index!);
					print('\nProduto removido com SUCESSO!');	
				}
				else
				{
					print('ID nao encontrado.');
				}
			}
			else
			{
				print('\nNenhum produto encontrado.');
			}
		}
		else if (option == 3)
		{
			print('\n--------------------Produtos--------------------');
			for (var count = 0; count < products.length; count++) {
				print('$count - ${products[count]}');
			}
			print('------------------------------------------------');
	    }
		else  if (option == 4)
		{
			var count = 0;
			stderr.write('Finalizando aplicação');
			do {
				stderr.write('. ');
				sleep(Duration(seconds:1));
				count++;
			} while (count != 14);
			break;
	    }
		else 
		{
			print('Opcao INVALIDA');
	    }
	}
}

bool verifyExistsInList(list, value)
{
	for (var item in list) {
		if (item == value)
		{
			return true;
		}
	}
	return false;
}