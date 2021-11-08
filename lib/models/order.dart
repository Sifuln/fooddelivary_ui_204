import 'package:food_delivary_ui_204/models/restaurant.dart';
import 'food.dart';

class Order{

  final Food food;
  final int quantity;
  final String date;
  final Restaurant restaurant;

  Order({
    required this.food,
    required this.quantity,
    required this.date,
    required this.restaurant
});

}