import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.teal,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('首页'),
          actions: <Widget>[
            new Container()
          ],
        ),
        body: new MyCard(),
        // body: new Center(
        //   child: null,
        // ),
      ),
    );
  }
}

class MyCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyCardState();
  }
}

class MyCardState extends State<MyCard> {
  var _throwShotAway = false;
  
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new ListTile(
        title: new Text('Hello World', style: new TextStyle(fontSize: 16,color: Colors.teal)),
        subtitle: new Text("ryan_dart@163.com"),
        //之前显示icon
        leading: new Icon(Icons.email, color: Colors.teal),
        //之后显示checkBox
        trailing: new Checkbox(
          value: _throwShotAway,
          activeColor: Colors.teal,
          onChanged: (bool newValue) {
            setState(() {
              _throwShotAway = newValue;
            });
          }
        )
      ),
    );
  }
}