﻿# encoding: utf-8
# language: ru

@IgnoreOnCIMainBuild
@DocumentationBuild
@tree

Функционал: Инструкция по генерации EPF файла
	Как Разработчик
	Я Хочу чтобы я мог создавать по feature файлам EPF файлы
	Чтобы я мог потом в этих EPF файлах реализовать нужные мне шаги
 
Контекст:
	Дано Я убедился что служебный EPF для проверки генерации EPF удален
	Дано Я открываю Vanessa-Behavior в TestClient без загрузки сохраненных настроек

	
Сценарий: Генерация нового EPF по feature файлу и перегенерация после добавления новых шагов
	Когда Я загружаю фичу
			Когда Я нажимаю на кнопку Загрузить одну фичу
			Тогда в открывшемся окне я указываю путь к фиче "Support\Instructions\Core\ДляГенерацииEPF.feature"
	И я создаю EPF по feature файлу
			И     В открытой форме я перехожу к закладке "Генератор EPF"
			И     В открытой форме я изменяю флаг "Генерировать управляемую форму"
			И     В открытой форме я изменяю флаг "Создавать области при генерации кода"
			И     В открытой форме я нажимаю на кнопку "Создать и обновить шаблоны обработок"
			И     В каталоге появилась обработка "Support\Instructions\Core\step_definitions\ДляГенерацииEPF.epf"
	И я открываю обработку в конфигураторе
			Тогда я запускаю конфигуратор служебной базы 
			И я открываю в конфигураторе файл "Support\Instructions\Core\step_definitions\ДляГенерацииEPF.epf"
			И я открываю основную форму обработки
			И я перехожу на закладку Модуль
			И я сворачиваю область Служебные функции
	И обратите внимание "Обратите внимание: для каждого из трёх шагов сценария было создано по одной процедуре."
	И я вижу процедуры созданные на основе шагов фичи
			И я перехожу к процедуре "ЯУказалПервоеСлагаемое"
			И я выделяю в тексте 9 строк
	И обратите внимание 'Теперь изменим фича файл и пересоздадим EPF'
	И я меняю исходный фича файл
		И я перехожу в сеанс 1С TestClient
		И я открываю feature файл в редакторе
		И я удаляю строку которая содержит текст "Тогда я получу сумму"
		И я набираю текст "	Тогда сумма будет меньше 20"
		И я сохраняю изменения в файле
		и я закрываю текстовый редактор
	И я пересоздаю EPF по feature файлу
			И     Я нажимаю на кнопку Перезагрузить Сценарии
			И     Я очищаю окно сообщений пользователю
			И     В открытой форме я перехожу к закладке "Генератор EPF"
			И     В открытой форме я нажимаю на кнопку "Создать и обновить шаблоны обработок"
			И     Я жду окончания обработки перегенерации EPF
	И я переоткрываю обработку в конфигураторе
			И я перехожу в конфигуратор служебной базы 
			И обратите внимание "Обратите внимание: чтобы увидеть изменения в epf надо переоткрыть файл обработки."
			И я закрываю обработку открытую в конфигураторе
			И я открываю в конфигураторе файл "Support\Instructions\Core\step_definitions\ДляГенерацииEPF.epf"
			И я открываю основную форму обработки
			И я перехожу на закладку Модуль
			И я сворачиваю область Служебные функции
	И обратите внимание 'Обратите внимание: процедура "ТогдаЯПолучуСумму(Парам01)" осталась в модуле.'
	И обратите внимание 'И появилась новая процедура "ТогдаСуммаБудетМеньше(Парам01)"'
	И я вижу новую процедуру в модуле
			И я перехожу к процедуре "СуммаБудетМеньше"
	И обратите внимание 'Таким образом добавление шага в feature файл вызвало добавление процедуры в epf файл.'
#	И я закрываю конфигуратор служебной базы
	

	
	
	
	
