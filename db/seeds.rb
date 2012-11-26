# -*- coding: utf-8 -*-

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Drinks
# ======
Drink.delete_all

Drink.create(:title => 'Volnay', 
  :description => %{
    Элегантное, комплексное вино, выдержанное в дубе, яркого рубинового цвета. 
    В аромате проступают тона  лесных ягод, подлеска, кожи и тонким оттенком фиалки. 
    Во вкусе вино хорошо структурировано, мягкое, гармоничное с шелковистыми 
    танинами и продолжительным послевкусием.
  },
  :image_url => 'drinks/volmay.jpg',
  :alcohol => 12,
  :price => 450.00)


Drink.create(:title => 'Pech Roc Blanc Demi Doux', 
  :description => %{
    Пеш Рок Блан Деми Ду – легкое белое полусладкое вино. 
    Виноград для него выращивают на глинисто-каменистых почвах. 
    Все виноградники снабжены специально разработанной ирригационной системой, 
    которая позволяет тщательно контролировать количество воды, получаемой каждой лозой.

    Вино приятного зеленовато-золотистого цвета, имеет ярко вырадженный 
    аромат зеленых яблок и цветочный вкус.  
    Отлично подойдет к блюдам из птицы и рыбы.
  },
  :image_url => 'drinks/demi_du.jpg',
  :alcohol => 12,
  :price => 450.00)


Drink.create(:title => 'Принс де Виана', 
  :description => %{
    Вино изготовлено из винограда сорта Каберне-Совиньон, выращенного в регионе Наварра. 
    Обладает интенсивным ароматом фруктов и ягод – земляники, малины, вишни - и богатым вкусом. 
    Вино универсально в гастрономии – подходит практически к любому блюду.
  },
  :image_url => 'drinks/demi_du_red.jpg',
  :alcohol => 12,
  :price => 450.00)


# Places
# ======
Place.delete_all

Place.create(
  :title => 'Пятерочка',
  :region => 'Невский',
  :street => 'Обуховской обороны пр.',
  :building => '33',
  :image_url => 'places/five.jpg')

Place.create(
  :title => 'Ароматный мир',
  :region => 'Адмиралтейский',
  :street => 'Садовая ул.',
  :building => '22',
  :image_url => 'places/am.jpg')

Place.create(
  :title => 'Полушка',
  :region => 'Невский',
  :street => 'Обуховской обороны пр.',
  :building => '32',
  :image_url => 'polushka.jpg')

