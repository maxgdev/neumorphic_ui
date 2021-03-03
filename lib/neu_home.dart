import 'package:flutter/material.dart';

class NeuHome extends StatefulWidget {
  @override
  _NeuHomeState createState() => _NeuHomeState();
}

class _NeuHomeState extends State<NeuHome> {
  

  @override
  Widget build(BuildContext context) {
    // Calculate units from Height and Width of Device
    final _heightUnit = MediaQuery.of(context).size.height / 100;
    final _widthUnit = MediaQuery.of(context).size.width / 100;

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
                      Icon(Icons.arrow_back),
                      Spacer(),
                      Text("Playing Now..."),
                      Spacer(),
                      Icon(Icons.arrow_forward)
                    ],
                  )),
              SizedBox(
                // Compute padding: 0.5% of height
                height: 0.5 * _heightUnit,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/burna.png"),
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
}
