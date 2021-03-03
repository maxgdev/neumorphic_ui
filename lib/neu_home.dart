import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NeuHome extends StatefulWidget {
  @override
  _NeuHomeState createState() => _NeuHomeState();
}

class _NeuHomeState extends State<NeuHome> {
  double _heightUnit;
  double _widthUnit;

  @override
  Widget build(BuildContext context) {
    // Calculate units from Height and Width of Device
    _heightUnit = MediaQuery.of(context).size.height / 100;
    _widthUnit = MediaQuery.of(context).size.width / 100;

    return Scaffold(
        backgroundColor: Color(0XFF2e2e2e),
        resizeToAvoidBottomPadding: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(
                    // Compute padding: 5% of height & 6% of width
                    vertical: 5 * _heightUnit,
                    horizontal: 6 * _widthUnit,
                  ),
                  child: Row(
                    children: [
                      _neuButton(Icons.arrow_back),
                      Spacer(),
                      Text("Playing Now...",
                          style: TextStyle(
                            color: Colors.white54,
                            letterSpacing: 0.25,
                            fontWeight: FontWeight.bold,
                          )),
                      Spacer(),
                      _neuButton(Icons.menu)
                    ],
                  )),
              SizedBox(
                // Compute padding: 0.5% of height
                height: 0.5 * _heightUnit,
              ),
              Container(
                height: 30 * _heightUnit,
                width: 60 * _widthUnit,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFF212121),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0XFF1c1c1c),
                      offset: Offset(15.0, 15.0),
                      blurRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Color(0XFF404040),
                      offset: Offset(-15.0, -15.0),
                      blurRadius: 20.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/em.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                // Compute padding: 4% of height
                height: 4 * _heightUnit,
              ),
              RichText(
                  text: TextSpan(
                text: "Ye Yo",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              )),
              SizedBox(
                height: 1.5 * _heightUnit,
              ), // Calculate later
              Text(
                "Burna Boy",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 2 * _heightUnit,
              ), // Calculate later
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text("01:35"),
                    Spacer(),
                    Text("3:50"),
                  ],
                ),
              ),
              Slider(
                value: 2,
                min: 0,
                max: 100,
                // divisions: 5,
                onChanged: (v) => {},
              ),
              SizedBox(
                height: 2 * _heightUnit,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_rounded),
                    Spacer(),
                    Icon(Icons.play_arrow_rounded),
                    Spacer(),
                    Icon(Icons.arrow_forward_rounded),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  _neuButton(IconData icon) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0XFF2e2e2e),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [Color(0XFF1c1c1c), Color(0XFF383838)],
          ),
          boxShadow: [
            new BoxShadow(
              color: Color(0XFF1c1c1c),
              offset: Offset(5.0, 5.0),
              blurRadius: 10.0,
            ),
            new BoxShadow(
              color: Color(0XFF404040),
              offset: Offset(-5.0, -5.0),
              blurRadius: 10.0,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Color(0XFF303030), Color(0XFF1a1a1a)]),
          ),
          child: Padding(
            padding: EdgeInsets.all(5 * _widthUnit), //_widthUnit
            child: FaIcon(
              icon,
              color: Colors.white54,
              // size: 3.6 *  _widthUnit, // _widthUnit
              size: 3.6 * (MediaQuery.of(context).size.height / 100) ,
            ),
          ),
        ),
      ),
    );
  }
}
