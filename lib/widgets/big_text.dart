import 'package:flutter/widgets.dart';

class BigText extends StatelessWidget {
  //const BigText({super.key});

  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BigText({Key? key, 
  this.color=const Color(0xFF332d2b), 
  this.size=20,
  required this.text, 
  this.overflow=TextOverflow.ellipsis}) : super(key: key); 


  @override
  Widget build(BuildContext context) {
    return Text(
      
     text,
     maxLines: 1,
     overflow: overflow,
     style: TextStyle(
      fontFamily: 'Roboto',
      color: color,
      fontWeight: FontWeight.w400,
      fontSize: size
    
     ),

    );
  }
}