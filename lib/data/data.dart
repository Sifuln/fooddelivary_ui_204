import 'package:flutter/material.dart';
import 'package:food_delivary_ui_204/models/food.dart';
import 'package:food_delivary_ui_204/models/order.dart';
import 'package:food_delivary_ui_204/models/restaurant.dart';
import 'package:food_delivary_ui_204/models/user.dart';

final _burrito = Food(imageUrl: 'images/burrito.jpg',name: 'Burrito',price: 200);
final _steak = Food(imageUrl: 'images/steak.jpg',name: 'Steak',price: 100);
final _pasta = Food(imageUrl: 'images/pasta.jpg',name: 'Pasta',price: 150);
final _ramen = Food(imageUrl: 'images/ramen.jpg',name: 'Ramen' , price: 120);
final _pancakes = Food(imageUrl: 'images/pancakes.jpg',name: 'Pancakes',price: 220);
final _burger = Food(imageUrl: 'images/burger.jpg',name: 'Burger',price: 200);
final _pizza = Food(imageUrl: 'images/pizza.jpg',name: 'Pizza',price: 400);
final _salmon = Food(imageUrl: 'images/salmon.jpg',name: 'Salmon Salad',price: 250);


final _restaurant0 = Restaurant(
  imageUrl: 'images/restaurant0.jpg',
  name: 'Restaurant 0',
  address: '200 Main St, New York , NY',
  rating: 5,
  menu:[_burrito,_steak,_pasta,_ramen,_pancakes,_burger,_pizza,_salmon],
);

final _restaurant1 = Restaurant(
    imageUrl: 'images/restaurant1.jpg',
    name: 'Restaurant 1',
    address: '200 Main St,New York, Ny', rating: 4,
    menu: [_steak,_pasta,_ramen,_pancakes,_burger,_pizza]);

final _restaurant2 = Restaurant(
    imageUrl: 'images/restaurant2.jpg',
    name: 'Restaurant 2',
    address: '200 Main St, New York, NY',
    rating: 2,
    menu: [_steak,_pasta,_pancakes,_burger,_pizza,_salmon]);

final  _restaurant3 = Restaurant(
    imageUrl: 'images/restaurant3.jpg',
    name: 'Restaurant 4',
    address: '200 Main St, New York, NY',
    rating: 3,
    menu: [_burrito,_steak,_burger,_pizza,_salmon]);

final _restaurant4 = Restaurant(
    imageUrl: 'images/restaurant4.jpg',
    name: 'Restaurant 4',
    address: '200 Main St, New York, NY',
    rating: 3,
    menu: [_burrito, _ramen,_pancakes,_salmon]);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];


//User
final currentUser = User(
  name: 'MD. Siful Islam',
  orders: [
    Order(
      date: 'Nov 10,2021',
      food: _steak,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11,2021',
      food: _ramen,
      restaurant: _restaurant0,
      quantity: 3
    ),
    Order(
        food: _burrito,
        quantity: 2,
        date: 'Nov 5,2021',
        restaurant: _restaurant1),
    Order(
      date: 'Nov 2, 2019',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1
    ),
    Order(
      date: 'Nov 1,2019',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 1
    )
  ],
  cart: [
    Order(
        food: _burger,
        quantity: 2,
        date: 'Nov 11,2019',
        restaurant: _restaurant2),
    Order(
      date: 'Nov 11, 2019',
      food: _pasta,
      restaurant: _restaurant2,
      quantity: 1
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _salmon,
      restaurant: _restaurant4,
      quantity: 1
    ),
    Order(
      date: 'Nov 11,2019',
      food: _burrito,
      restaurant: _restaurant4,
      quantity: 3
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _burrito,
      restaurant: _restaurant4,
      quantity: 3
    ),
    Order(
      date: 'Nov 11,2019',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2
    ),
  ],
);



