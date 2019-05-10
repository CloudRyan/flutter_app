import 'package:flutter/material.dart';
class NoticePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _NoticePageState();
}
class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.teal,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('通知'),
          // 后面的省略
          // ......
        )
      ),
    );
  }
}