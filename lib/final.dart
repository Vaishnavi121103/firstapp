import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FinalScreen extends StatelessWidget {



  var favThing;
  var photos;

  FinalScreen(this.favThing, this.photos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Image.asset('assets/images/' '$photos'),


            Container(
              child: Text('$favThing' , style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500 ) ,),
              margin: EdgeInsets.symmetric(vertical: 30,),


            ),
          ],
        ),
      ),






      
    );
  }
}
