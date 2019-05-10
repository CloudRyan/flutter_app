import 'package:flutter/material.dart';

class IdeaPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _IdeaPageState();
}
class _IdeaPageState extends State<IdeaPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.teal,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('想法'),
          actions: <Widget>[
            new Container()
          ],
        ),
        body: new Center(
          child: null,
        ),
      ),
    );
  }
}