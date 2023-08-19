import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project_02/util/food_tile.dart';
import 'package:project_02/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded, color: Colors.black), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu_rounded, color: Colors.black),
            label: ''),
        BottomNavigationBarItem(
            icon:
                Icon(Icons.shopping_cart_checkout_rounded, color: Colors.black),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black), label: ''),
      ]),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.pin_drop,
                        color: Colors.black,
                      ),
                      Text(
                        'HSR Layout, Bengaluru',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //searchbar
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffcfcece),
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        Text('Search'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                      child: ListView(
                    children: [
                      FoodTile(
                        src:
                            'https://cdn.discordapp.com/attachments/874855653607370764/1134621269661335743/Chicken-leek-and-broccoli-rice-stir-fry-ffe0df6.jpg',
                        foodname: 'Earth Plate',
                        address: '#16, 16th Cross, 80 ft road',
                      ),
                      FoodTile(
                        src:
                            'https://cdn.discordapp.com/attachments/874855653607370764/1134644431660793896/140430115517-06-comfort-foods.jpg',
                        foodname: 'Nutri Kitchen',
                        address: '#16, 16th Cross, 80 ft road',
                      ),
                      FoodTile(
                        src:
                            'https://cdn.discordapp.com/attachments/874855653607370764/1134644470026088498/Breakfast-board28-500x500.jpg',
                        foodname: 'FoodPoint',
                        address: '#16, 16th Cross, 80 ft road',
                      ),
                      FoodTile(
                        src:
                            'https://cdn.discordapp.com/attachments/874855653607370764/1134644470026088498/Breakfast-board28-500x500.jpg',
                        foodname: 'Veggie Bowl',
                        address: '#16, 16th Cross, 80 ft road',
                      ),
                      FoodTile(
                        src:
                            'https://cdn.discordapp.com/attachments/874855653607370764/1134644473750626384/190321132624-toadinhole-20012-21.jpg',
                        foodname: 'Love Made',
                        address: '#16, 16th Cross, 80 ft road',
                      ),
                      FoodTile(
                        src:
                            'https://cdn.discordapp.com/attachments/874855653607370764/1134644475101192243/11763609.jpg',
                        foodname: 'Breakfast',
                        address: '#16, 16th Cross, 80 ft road',
                      ),
                      FoodTile(
                        src:
                            'https://cdn.discordapp.com/attachments/874855653607370764/1134644524094865448/FooterBowl_Small.png',
                        foodname: 'Salad',
                        address: '#16, 16th Cross, 80 ft road',
                      ),
                      FoodTile(
                        src:
                            'https://cdn.discordapp.com/attachments/874855653607370764/1134644510689857536/fast-food-restaurant.jpg',
                        foodname: 'Lunch',
                        address: '#16, 16th Cross, 80 ft road',
                      ),
                    ],
                  ))
                ],
              ))),
    );
  }
}
