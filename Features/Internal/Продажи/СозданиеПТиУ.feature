#language: ru

@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Создание ПТиУ

Как тестеровщик я хочу
создать документ ПТиУ 
чтобы проверить корректность отчета D2001 Продажи 

Сценарий: Создание ПТиУ
* Открываем форму создания документа ПТиУ
	И В командном интерфейсе я выбираю 'Продажи' 'Реализации товаров и услуг'
	Тогда открылось окно 'Реализации товаров и услуг'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Реализация товаров и услуг (создание)'
* Заполняем шапку документа
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'            |
		| '2'   | 'Клиент 2 (2 соглашения)' |
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Реализация товаров и услуг (создание) *'
	И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
	И я нажимаю кнопку выбора у поля с именем "Agreement"
	Тогда открылось окно 'Соглашения'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'                                        |
		| '3'   | 'Индивидуальное соглашение 2 (расчет по соглашениям)' |
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Реализация товаров и услуг (создание) *'
	И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
* Заполняем ТЧ
	И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
	И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItem"
	Тогда открылось окно 'Номенклатура'
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Реализация товаров и услуг (создание) *'
	И в таблице "ItemList" я активизирую поле с именем "ItemListItemKey"
	И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItemKey"
	Тогда открылось окно 'Характеристики'
	И в таблице "List" я активизирую поле с именем "Item"
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Реализация товаров и услуг (создание) *'
	И в таблице "ItemList" я активизирую поле с именем "ItemListQuantity"
	И в таблице "ItemList" в поле с именем 'ItemListQuantity' я ввожу текст '3,000'
	И я перехожу к следующему реквизиту
	И в таблице "ItemList" я завершаю редактирование строки
* Проводим и закрываем документ
	И я нажимаю на кнопку с именем 'FormPostAndClose'
	И я жду закрытия окна 'Реализация товаров и услуг (создание) *' в течение 20 секунд


