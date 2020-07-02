import 'package:flutter/material.dart';

import '../constants.dart';

class CaseUpdateContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4), blurRadius: 30, color: kShadowColor)
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InfoBox(color: kInfectedColor, title: "Infected", number: 1046),
            InfoBox(color: kDeathColor, title: "Death", number: 87),
            InfoBox(color: kRecovercolor, title: "Recovered", number: 46)
          ],
        ));
  }
}

class InfoBox extends StatelessWidget {
  final Color color;
  final String title;
  final int number;

  InfoBox({this.color, this.title, this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(6),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color.withOpacity(.26),
            ),
            child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(color: color, width: 2)))),
        SizedBox(height: 10),
        Text("$number", style: TextStyle(fontSize: 40, color: color)),
        Text(title, style: kSubTextStyle)
      ],
    );
  }
}
