import 'package:firstapp/final.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

          primarySwatch: Colors.teal,
          // primaryColor: Color(0xFFF4cd4cf),
          backgroundColor: Colors.black
      ),
      home: silence(),
    );
  }
}

class silence extends StatelessWidget{


  @override
  Widget build(BuildContext context){



    return Scaffold

      (
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15,right: 0,top: 8, bottom: 8),
          child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset('assets/images/cgirl.png')),
        ),
          title: Text('Paheli',style: TextStyle(fontFamily: 'DEL',fontSize: 28),)
    ),

      body: Column(
        children: [



          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 150,bottom: 20,),
            child: Text('Q1. What is my fav thing to do in a day?',style: TextStyle(
                fontSize: 20
            ),
            ),

          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, CupertinoPageRoute(builder: (BuildContext ctx){
                          return FinalScreen('This is slightly true but not correct 😏😏','food.png');
                        })
                        );
                      }, child: Text('Eat food')),
                ),



                SizedBox(
                    width: double.infinity,

                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, CupertinoPageRoute(builder: (BuildContext ctx){
                        return FinalScreen('ahhhh I hate this pr majboori h 😭😭','bath.png');
                      })
                      );
                    }, child: Text('Shower'))),


                SizedBox(

                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, CupertinoPageRoute(builder: (BuildContext ctx){
                        return FinalScreen('I don\'t love it but have to 🥲🥲 ','study.png');
                      })
                      );
                    }, child: Text('Study'))),


                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      

                      Navigator.push(context, CupertinoPageRoute(builder: (BuildContext ctx){
                         return FinalScreen('Its the right answer, You know me well 😉😉','sleep.png');
                      })
                      );

                    }, child: Text('Sleep'))),
              ],
            ),
          ),



        ],
      )
    );

  }


}

