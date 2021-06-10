import 'dart:io';

int calculate() {
  return 6 * 7;
}

void verifyIfInputIsNull(exit, option)
{
	if (option == null)
	{
		print('\nPor favor, informe um valor VALIDO!');
		if (exit)
		{
			exit(0);
		}
	}
}

bool intInputIsWithinTheLimit(value, initialLimit, finalLimit, exit)
{
	verifyIfInputIsNull(exit, value);
	if (value < initialLimit || value > finalLimit)
	{
		print('\nValor fora do limite esperado!');
		if (exit)
		{
			exit(0);
		}
		return false;
	}

	return true;
}