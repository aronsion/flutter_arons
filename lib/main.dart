import 'package:arons/chat.dart';
import 'package:arons/classify.dart';
import 'package:arons/follow.dart';
import 'package:arons/home.dart';
import 'package:arons/personal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  Widget _currBody = HomePage();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _currBody,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xffff678f),
        unselectedItemColor: const Color(0xff666666),
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text('首页'),icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('关注'),icon: Icon(Icons.add_box)),
          BottomNavigationBarItem(title: Text('分类'),icon: Icon(Icons.format_list_bulleted)),
          BottomNavigationBarItem(title: Text('聊天'),icon: Icon(Icons.chat)),
          BottomNavigationBarItem(title: Text('个人中心'),icon: Icon(Icons.supervisor_account))
        ],
      ),
    );
  }

  void _onTap(int index) {
    switch (index) {
      case 0:
        _currBody = new HomePage();
        break;
      case 1:
        _currBody = new FollowPage();
        break;
      case 2:
        _currBody = new ClassifyPage();
        break;
      case 3:
        _currBody = new ChatPage();
        break;
      case 4:
        _currBody = new PersonalPage();
        break;
    }
    setState(() {
      _currentIndex = index;
    });
  }
}
