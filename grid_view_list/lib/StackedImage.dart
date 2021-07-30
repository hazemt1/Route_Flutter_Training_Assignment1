
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StackedImage extends StatelessWidget {
  Info info;
  StackedImage(this.info);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(2),
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Image(
              image: AssetImage(info.imagePath),height: 150,width: 200,fit: BoxFit.fill,
            ),
            Container(
              child: Text(
                info.name,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.all(5),
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                color: HexColor('#8c2fc0').withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Info {
  String name;
  String imagePath;
  Info(this.name,this.imagePath);
}
