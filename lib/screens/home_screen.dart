import 'package:covid19_app/constants.dart';
import 'package:covid19_app/widgets/CaseUpdateContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
                padding: EdgeInsets.only(left: 40, top: 50, right: 20),
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF3383CD),
                          Color(0xFF11249F),
                        ]),
                    image: DecorationImage(
                        image: AssetImage("assets/images/virus.png"))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset("assets/icons/menu.svg")),
                    SizedBox(height: 20),
                    Expanded(
                        child: Stack(
                      children: <Widget>[
                        SvgPicture.asset("assets/icons/Drcorona.svg",
                            width: 230,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter),
                        Positioned(
                            top: 20,
                            left: 150,
                            child: Text("All you need\n is stay at home",
                                style: kHeadingTextStyle.copyWith(
                                    color: Colors.white))),
                        Container()
                      ],
                    ))
                  ],
                )),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Color(0xFFE5E5E5))),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/icons/maps-and-flags.svg",
                      width: 20),
                  SizedBox(width: 20),
                  Expanded(
                      child: DropdownButton(
                          value: "Indonesia",
                          isExpanded: true,
                          underline: SizedBox(),
                          items: [
                            'Indonesia',
                            'Bangladesh',
                            'United States',
                            'Japan'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {})),
                ],
              )),
          SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Case Update\n", style: kTitleTextstyle),
                          TextSpan(
                              text: "Newest update March 29",
                              style: TextStyle(color: kTextLightColor))
                        ]),
                      ),
                      Spacer(),
                      Text("See details",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              )),
          SizedBox(height: 20),
          CaseUpdateContainer(),
          SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Spread of Virus", style: kTitleTextstyle),
                  Text("See details",
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.w600)),
                  SizedBox(height: 20),
                ],
              )),
          SvgPicture.asset("assets/images/map.png")
        ],
      ),
    ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
