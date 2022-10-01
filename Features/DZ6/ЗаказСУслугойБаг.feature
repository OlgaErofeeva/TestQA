﻿#language: ru

@tree

Функционал: Создание Заказа поставщику с услугой

Как Тестеровщик я хочу
протестировать создание Заказа поставщику 
чтобы <бизнес-эффект> 

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения
@blocker
Сценарий: Создаем Заказ поставщику с багом
* Создаем новый Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполняем шапку докумена
	Тогда открылось окно 'Заказ (создание)'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
* Заполняем ТЧ Товары: 1-я строка - товар
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Босоножки'    |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '100'
	И в таблице "Товары" я завершаю редактирование строки
* Проверяем поле Количество (итог) после введения строки с товаром
	И я запоминаю значение поля с именем 'ТоварыКоличество' таблицы 'Товары' как 'КолТовара'
	И я запоминаю значение выражения '?($КолТовара$ = "", 0, Число(СтрЗаменить($КолТовара$, " ", "")))' в переменную "Количество1"
	И я запоминаю значение поля с именем 'ТоварыИтогКоличество' как 'КоличествоИтог'
	И я запоминаю значение выражения '?($КоличествоИтог$ = "", 0, Число(СтрЗаменить($КоличествоИтог$, " ", "")))' в переменную "КоличествоИтог1"
	И выражение внутреннего языка '$Количество1$ = $КоличествоИтог1$' Истинно
* заполняем ТЧ Товары: 2-я строка - услуга
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Доставка'     |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1'
	И в таблице "Товары" я завершаю редактирование строки
* Проверяю значение поля Количество (Итог) после введения 2-й строки
	И я запоминаю значение поля с именем 'ТоварыКоличествоУпаковок' таблицы 'Товары' как 'КолУслуга'
	И я запоминаю значение выражения '?($КолУслуга$ = "", 0, Число(СтрЗаменить($КоличествоКолУслуга$, " ", "")))' в переменную "Количество2"
	И я запоминаю значение поля с именем 'ТоварыИтогКоличество' как 'КоличествоИтог'
	И я запоминаю значение выражения '?($КоличествоИтог$ = "", 0, Число(СтрЗаменить($КоличествоИтог$, " ", "")))' в переменную "КоличествоИтог1"
	И выражение внутреннего языка '$Количество1$ + $Количество2$ = $КоличествоИтог1$' Истинно
* Проводим и закрываем документ
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд