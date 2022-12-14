#language: ru

@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Смоук-тесты для загрузки картинки

Как Тестеровщик я хочу
проверить, что все справочники для загрузки
картинок товаров загружаются

Функциональность: Дымовые тесты для загрузки картинок

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
		
Сценарий: Открытие формы списка "Товары" 

	Дано Я открываю основную форму списка справочника "Товары"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Товары"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "Товары"

	Дано Я открываю основную форму справочника "Товары"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Товары"
	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "ХранимыеФайлы" 

	Дано Я открываю основную форму списка справочника "ХранимыеФайлы"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ХранимыеФайлы"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "ХранимыеФайлы"

	Дано Я открываю основную форму справочника "ХранимыеФайлы"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника ХранимыеФайлы"
	И Я закрываю текущее окно
