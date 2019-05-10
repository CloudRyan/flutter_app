/**
 * ListTile
 */
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());


class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '底部导航演示',
      home: new BottomNavigationWidget(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return new MaterialApp(
    //   title: '底部导航演示',
    //   home: new BottomNavigationWidget(),
    // );
    return new MaterialApp(
      title: "ListTile",
      theme: new ThemeData(
        primaryColor: Colors.teal,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("ListTile"),
        ),
        body: new MyCard(),
        // body: new BottomNavigationWidget(),
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
        title: new Text('Hello World', style: new TextStyle(fontSize: 18,color: Colors.teal)),
        subtitle: new Text("duo_shine@163.com"),
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

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BottomNavigationWidgetState();
  }
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    /*
    返回一个脚手架，里面包含两个属性，一个是底部导航栏，另一个就是主体内容
     */
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        //底部导航栏的创建需要对应的功能标签作为子项，这里我就写了3个，每个子项包含一个图标和一个title。
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.work,
              ),
              title: new Text(
                '首页',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
              ),
              title: new Text(
                '商业',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.mood,
              ),
              title: new Text(
                '我的',
              )),
        ],
        //这是底部导航栏自带的位标属性，表示底部导航栏当前处于哪个导航标签。给他一个初始值0，也就是默认第一个标签页面。
        currentIndex: _currentIndex,
        //这是点击属性，会执行带有一个int值的回调函数，这个int值是系统自动返回的你点击的那个标签的位标
        onTap: (int i) {
          //进行状态更新，将系统返回的你点击的标签位标赋予当前位标属性，告诉系统当前要显示的导航标签被用户改变了。
          setState(() {
            _currentIndex = i;
          });
        },
      ),
    );
  }
}