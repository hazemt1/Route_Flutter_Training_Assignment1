import 'package:flutter/material.dart';

import 'HomePage.dart';

class ResultScreen extends StatelessWidget {
  final int result;
  Text finalResult;
  ResultScreen(this.result) {
    if (result == 0)
      finalResult = Text('Player 1 Won',style: TextStyle(color: Colors.amberAccent,fontSize: 50),);
    else if (result == 1)
      finalResult = Text('Player 2 Won',style: TextStyle(color: Colors.red,fontSize: 50),);
    else
      finalResult = Text('Draw',style: TextStyle(color: Colors.blue,fontSize: 50),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              finalResult,
              Container(
                child: MaterialButton(
                  child: Text(
                    'Play again',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
