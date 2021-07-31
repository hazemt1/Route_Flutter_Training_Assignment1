import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {

  final Function function;
  final String buttonText;
  final double left ;
  final double right ;
  final double bottom ;

  GameButton(this.function,this.buttonText,{this.left=0,this.right=0,this.bottom=0});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        child: MaterialButton(
          onPressed: this.function,
          child: Center(
            child: Text(
              this.buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40,color: Colors.white),
            ),
          ),
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: this.bottom, color: Colors.white12),
            right: BorderSide(width: this.right, color: Colors.white12),
            left: BorderSide(width: this.left, color: Colors.white12),
          ),
        ),
      ),
    );
  }
}

