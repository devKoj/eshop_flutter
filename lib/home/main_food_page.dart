import 'package:eshop/home/food_page_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/big_text.dart';
import '../widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
               Container(
      child: Container(
        margin: EdgeInsets.only(top: 45, bottom: 15),
        padding: EdgeInsets.only(left: 20, right: 20 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Column(
                children:  [
                  BigText(text:"Accra"),
                  Row(children: [
                    SmallText(text:"Mallam", color: Colors.black54,),
                    Icon(Icons.arrow_drop_down_rounded)
                  ],)

                ],
              ),
              Center(child: 
              Container( 
                width: 45,
                height: 45,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: const Icon(Icons.search, 
                color: Colors.white,
                ),
              )
              ,)
        ],)
      ),
    ),
    FoodPageBody()
      ],)
    );
  }
}