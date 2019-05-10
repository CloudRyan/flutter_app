import 'package:flutter/material.dart';
class MarketPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _MarketPageState();
}
class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.teal,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('市场'),
          // 后面的省略
          // ......
        )
      ),
    );
  }

}