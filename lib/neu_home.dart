import 'package:flutter/material.dart';


class NeuHome extends StatefulWidget {
  NeuHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NeuHomeState createState() => _NeuHomeState();
}

class _NeuHomeState extends State<NeuHome> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Spacer(),
                  Text("Playing Now..."),
                  Spacer(),
                  Icon(Icons.arrow_forward)
                ],
              )
              ),
            SizedBox(height: 10,),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle
              ),
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
            SizedBox(height: 10,),
            RichText(
              text: TextSpan(
                text: "Ye Yo",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              )
              ),
              SizedBox(height: 10,), // Calculate later
              Text(
                "Burna Boy",
                style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10,), // Calculate later
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

          ],
        ),
          
      ));
  }
}
