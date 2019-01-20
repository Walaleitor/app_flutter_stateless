import 'package:flutter/material.dart';
import 'card_message.dart';

class ListMain extends StatelessWidget{
  
  
  
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 55.0
      ),
      child: ListView(
              
              scrollDirection: Axis.vertical,
              children: <Widget>[
                CardMessage("assets/images/im1.jpg","John Wick","Hola!!"),
                CardMessage("assets/images/im2.jpg","Spike","Hola!!"),
                CardMessage("assets/images/im3.jpg","Aura","Hola!!"),
                CardMessage("assets/images/im4.jpg","Lulu","Hola!!"),
                CardMessage("assets/images/im5.jpg","Albaquita","Hola!!"),
                CardMessage("assets/images/im6.jpg","Blanca Nieves","Hola!!"),
              ]
    ),
    );
  }

}