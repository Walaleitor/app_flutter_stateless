import 'package:flutter/material.dart';

class CardMessage extends StatelessWidget{

  String pathImage = "assets/images/im1.jpg";
  String name = "";
  String message = "";

  CardMessage(this.pathImage,this.name,this.message);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final cardIcon = Container(
      height: 45.0,
      width: 45.0,
      margin: EdgeInsets.only(
        right: 15.0,
        
      
      ),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.blue,            
                ],
                begin: FractionalOffset(0.1, 1.0),
                end: FractionalOffset(2.0,2.0),
                stops: [0.0, 0.3],
                tileMode: TileMode.clamp
          
              )
            ),
          ),
          Container (            
            child: Center(
              child: Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),

          )
        ],
      ),
    );



    final cardImage = Container(
      width: 60.0,
      height: 60.0,
      margin: EdgeInsets.only(        
        left: 20.0,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover
        )
      ),
    );


    final cardName = Container(
      margin: EdgeInsets.only(
        left: 25.0,
        top: 10.0,
        ),
        child: Text(
                name,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
                ),
              ),
    );

    final cardMenssage = Container(
      margin: EdgeInsets.only(
        left: 25.0,
        top: 10.0
        ),
        child: Text(
                message,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey
                ),
              ),
    );

    final cardShape = Container(
      margin: EdgeInsets.only(
        left: 5.0,
        top: 10.0
        ),
      
      height: 60.0,
      child: Row(
        children: <Widget>[
          cardImage,
          Container(
            width: 250,
            margin: EdgeInsets.only(
              left: 10.0
              
            ),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              cardName,
              cardMenssage,
              
            ],
          ),
          )
          ,
          cardIcon,
        ],
      ),
    );




    return cardShape;
      
    
  }

}