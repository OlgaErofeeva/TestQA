﻿#language: ru
@tree

Функционал: Проверка линейки скидок

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий 

Сценарий: Проверка линейки скидок (экспорт)
И Создание Заказа клиента
И Проверка линейки скидок: сумма от 0 до 1000 (исключая 1000)
И Проверка линейки скидок: сумма 1000
И Проверка линейки скидок: сумма от 1000 до 2000 (исключая 2000)
И Проверка линейки скидок: сумма 2000
И Проверка линейки скидок: сумма свыше 2000