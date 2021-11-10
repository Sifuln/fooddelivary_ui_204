import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivary_ui_204/data/data.dart';
import 'package:food_delivary_ui_204/models/restaurant.dart';
import 'package:food_delivary_ui_204/screens/cartscreen.dart';
import 'package:food_delivary_ui_204/screens/restaurant_screen.dart';
import 'package:food_delivary_ui_204/widgets/rating_order.dart';
import 'package:food_delivary_ui_204/widgets/recentorders.dart';
import 'package:badges/badges.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildRestaurants(){
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurant) {
     restaurantList.add(
         GestureDetector(
           onTap: () => Navigator.push(
             context,
             MaterialPageRoute(
                 builder: (_) => RestaurantScreen(restaurant: restaurant))
           ),
           child: Container(
             margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
             decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(15.0),
                 border: Border.all(
                   width: 1.0,
                   color: (Colors.grey[200])!,
                 )
             ),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(15.0),
                     child: Hero(
                       tag: restaurant.imageUrl,
                       child: Image(
                         height: 130.0,
                         width: 130.0,
                         image: AssetImage(restaurant.imageUrl),
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.all(12.0),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(restaurant.name,
                         style: TextStyle(
                           fontSize: 20.0,
                           fontWeight: FontWeight.bold
                         ),
                           overflow: TextOverflow.ellipsis,
                         ),
                         //rating
                         RatingStars(restaurant.rating),
                         SizedBox(height: 4.0
                         ),
                         Text(restaurant.address,
                         style: TextStyle(
                           fontSize: 10.0,
                           fontWeight: FontWeight.w600
                         ),
                           overflow: TextOverflow.ellipsis,
                         ),
                         SizedBox(height: 4.0,),
                         Text("0.2km far away",
                           style: TextStyle(
                             fontSize: 16.0,
                             fontWeight: FontWeight.w600
                           ),
                           overflow: TextOverflow.ellipsis,
                         )
                       ],
                     ),
                   )
                 ],
               ),
             )
           ),
         )
     );

    });
    return Column(children: restaurantList,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.person_alt_circle),
          iconSize: 30.0,
          onPressed: (){},
        ),
        title: Text('Food Delivery'),
        actions: [
          TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => CartScreen())
              ),
              child: Badge(
      badgeContent: Text('6',style: TextStyle(
        fontSize: 12
      ),),
      child: Icon(Icons.shopping_cart,size: 30,color: Colors.white,),
          ))
        ],
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(width: 0.8)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    width: 0.8,
                    color: Theme.of(context).primaryColor
                  )
                ),
                hintText: 'Search Food or Restaurants',
                prefixIcon: Icon(
                  Icons.search,
                  size: 30.0,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: (){},
                )
              ),
            ),
          ),
          RecentOrders(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Nearby Restaurants',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2
                  ),
                ),),
              _buildRestaurants()
            ],
          )
        ],
      ),
    );
  }
}
