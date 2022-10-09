import 'package:flutter/material.dart';

import '../model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
        //  width: 200,
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.03),
          //alignment: Alignment.center,
          color: Colors.transparent,
          child: CircleAvatar(
            radius: 105,
            backgroundColor: Color(0xff4c505b),
            child: CircleAvatar(
              backgroundImage: AssetImage(slideList[index].imageUrl),
              radius: 100,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          slideList[index].title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            color: Color(0xff4c505b),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}