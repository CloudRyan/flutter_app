import 'package:flutter/material.dart';
class MyPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _MyPageState();
}
class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.teal,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('我的'),
          // 后面的省略
          // ......
        )
      ),
    );
  }

}