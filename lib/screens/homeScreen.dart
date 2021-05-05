import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[ // total 5 containers
            Container( // Container #1
              padding: EdgeInsets.fromLTRB(24.4, 42.0, 24.4, 42.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Icon(Icons.arrow_back_ios),
                  Text('Skip'),

                ]
              ),
            ),
            Container( // Container #2
              margin: EdgeInsets.only(left: 20.0, right: 20, top: 34.0),
              constraints: BoxConstraints.expand(height: 350),
              //MediaQuery help to be responsive in width (65%) 
              width: MediaQuery.of(context).size.width*0.65,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/girl.png'),
                  fit: BoxFit.cover),
              ),
            ),

            Container(  // Container #3
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width*0.55,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text('forget about strict diet',
                style: TextStyle(
                  fontSize: 30,
                  ),
                ),
                ),
            ),
            Container(  // Container #4
              margin:EdgeInsets.only(top: 40),
              width: MediaQuery.of(context).size.width*0.65,
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18),),
                onPressed: () {},
                padding: EdgeInsets.only(top: 15, bottom: 15),
                color: Color(0xffA75DB4),
                textColor: Colors.white,
                child: Text('Get My Plan'.toUpperCase(),
                  style: TextStyle(fontSize: 14,),
                  ),
              ),
            ),
            Container( // Container #5
              margin: EdgeInsets.only(top: 20),
              child: Text('Sign In',
              style: TextStyle(
                color: Color(0xff737ca4),
                fontSize: 18,
              ),

              ),
            ),

  
        
          ],

        )),
      
    );
  }
}