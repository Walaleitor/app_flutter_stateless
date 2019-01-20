import 'package:flutter/material.dart';

class AppBarOne extends StatelessWidget{





  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final appBarBox = Container(
      height: 100.0,
      padding: EdgeInsets.only(
        top: 30.0
      ),
      decoration: BoxDecoration(
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
      child: Center(
        child: Text(
          "APP FLUTTER",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white

          ),
        ),
      )
    );


    final iconAppBar = Container(
      height: 100,
      padding: EdgeInsets.only(
        left: 20.0,
        top: 40.0,
      ),
      child: InkWell(
        child: Icon(
         Icons.menu,
         color: Colors.white,
        
        ),
        onTap: (){
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text("Navegando!!"),
              )
            );

          },

      ),
    );



    






    return Stack(
      children: <Widget>[
        appBarBox,
        iconAppBar
      
      ],
    );
  

  }
}