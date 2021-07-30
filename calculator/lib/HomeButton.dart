import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  Function function;
  Widget widget;
  int flex;
  HomeButton(this.widget,this.function, [this.flex=1]);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: EdgeInsets.all(2),
        child: ElevatedButton(
          onPressed: this.function,
          child: widget,
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            textStyle: TextStyle(fontSize: 20),
            padding: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}
