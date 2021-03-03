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
        child: Padding(
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
      ));
  }
}
