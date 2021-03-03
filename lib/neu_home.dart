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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Neumorphic Design',
            ),
 
          ],
        ),
      ),
    );
  }
}
