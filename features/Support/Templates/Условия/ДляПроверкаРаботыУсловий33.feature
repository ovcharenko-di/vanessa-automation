# language: ru
# encoding: utf-8
#parent ua:
@UA24_Макеты_для_условий
#parent uf:
@UF9_Вспомогательные_фичи

@IgnoreOnCIMainBuild


Функциональность: ДляПроверкаРаботыУсловий33

Сценарий: ДляПроверкаРаботыУсловий33
	Если 'Истина' Тогда
			Если 'Ложь' Тогда
				И Я запоминаю значение выражения '1' в переменную "ИмяПеременной"
	ИначеЕсли 'Истина' Тогда				
			И я вызываю исключение "Это условие не должно было сработать."