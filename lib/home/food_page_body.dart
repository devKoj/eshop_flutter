import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
     
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position){
        return _buildPageItem(position);
        }
        ),
    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
    
    height: 220,
    margin: EdgeInsets.only(left: 7, right: 7),
    decoration: BoxDecoration(
      color: index.isEven?Colors.blue:Colors.amber,
      borderRadius: BorderRadius.circular(30),
      image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          "assets/image/food4.png"
          )
        )
    ),
    ),
    Align(
      alignment: Alignment.bottomCenter,
      child: Container(
    
    height: 140,
    margin: EdgeInsets.only(left: 30, right: 30, bottom: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
     
    ),
    ),
    ) 
      ],
    );
  }
}