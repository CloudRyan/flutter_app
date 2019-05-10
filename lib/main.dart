import 'package:flutter/material.dart';
import 'package:flutter_app/index/index.dart';         // 导入index.dart

// 这里为入口函数
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Index(),     // 指定去加载 Index页面。
    );
  }
}