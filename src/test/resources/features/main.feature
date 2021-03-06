Feature: Main feature

  @MainPageLogo
  Scenario: Проверка 'B2C Accelerator' лого
    Given Открыть главную страницу сайта
    Then Проверить отображение и кликабельность 'B2C Accelerator' лого

  @MainPageBanners
  Scenario: Проверка всех баннеров
    Given Открыть главную страницу сайта
    Then Проверить отображение и кликабельность баннеров

  @MainPageBanners
  Scenario: Проверка подборки товаров
    Given Открыть главную страницу сайта
    Then Проверить отображение и кликабельность подборки товаров

  @MainPageGoods
  Scenario: Проверка категорий товаров
    Given Открыть главную страницу сайта
    Then Проверить отображение списков при наведении курсором

  @BasketEmpty
  Scenario: Проверка пустой корзины
    Given Открыть главную страницу сайта
    When Нажать на кнопку с иконкой корзины
    Then Проверить, что поп-ап 'Bag' отображается
    When Кликнуть по кнопке 'Continue Shopping'
    Then Проверить, что поп-ап 'Bag' не отображается

  @BasketFromSearch
  Scenario: Проверка добавления продукта через поиск
    Given Открыть главную страницу сайта
    When Ввести в поле поиска значения 'Bags'
    Then Проверить, что кнопка поиска 'доступна'
    When Нажать на кнопку поиска
    Then Проверить наличие результатов
    When Кликнуть кнопку 'Map Marker' у случайного товара
    Then Проверить, что поп-ап 'Product Availability' отображается
    When Закрыть поп-ап
    # На этом этапе сохраняем название добавленного товара
    When Кликнуть кнопку 'Basket' у случайного товара
    Then Проверить, что поп-ап 'Added to Your Shopping Bag' отображается
    When Нажать кнопку 'Check Out'
    # Сверяемся с сохраненным значением
    Then Проверить, что продукты добавились в корзину

  @BasketSection
  Scenario: Проверка добавления товара из раздела
    Given Открыть главную страницу сайта
    When Открыть рандомную категорию товаров
    When Выбрать рандомный раздел
    # На этом этапе сохраняем название добавленного товара
    When Добавить в корзину рандомный товар
    When Нажать кнопку 'Check Out'
    # Сверяемся с сохраненным значением
    Then Проверить, что продукт добавился в корзину

  @BasketDetailPage
  Scenario: Проверка добавления товара с детальной страницы
    Given Открыть главную страницу сайта
    When Открыть рандомную категорию товаров
    When Выбрать рандомный раздел
    When Перейти на детальную страницу рандомного товара
    Then Проверить наличие и кликабельность кнопок
      | ADD TO BAG       |
      | PICK UP IN STORE |
      | ADD TO WISHLIST  |
    # На этом этапе сохраняем название добавленного товара
    When Нажать кнопку 'Add to bag'
    When Нажать кнопку 'Check Out'
    # Сверяемся с сохраненным значением
    Then Проверить, что продукт добавился в корзину

  @LoginPage
  Scenario: Проверка страницы регистрации/авторизации
    Given Открыть главную страницу сайта
    When Нажать кнопку 'SIGN IN / REGISTER'
    Then Проверить, что в блоке 'Create an Account' доступны поля
      | TITLE            |
      | FIRST NAME       |
      | LAST NAME        |
      | EMAIL ADDRESS    |
      | PASSWORD         |
      | CONFIRM PASSWORD |
    Then Проверить отображение и кликабельность чек-боксов
    Then Проверить, что кнопка 'REGISTER' недоступна
    Then Проверить, что в блоке 'Returning Customer' доступны поля
      | EMAIL ADDRESS |
      | PASSWORD      |
    Then Проверить, что кнопка 'LOGIN' доступна
