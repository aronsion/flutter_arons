import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget {
  PersonalPage({Key key}) : super(key: key);

  @override
  _PersonalStatePage createState() => new _PersonalStatePage();
}

class _PersonalStatePage extends State<PersonalPage> {
  final List<Tab> mytabs = <Tab>[
    Tab(
      text: '热门',
    ),
    Tab(
      text: '水果',
    ),
    Tab(
      text: '食品',
    ),
    Tab(
      text: '手机',
    ),
    Tab(
      text: '电脑',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: mytabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('个人中心'),
            bottom: TabBar(
              tabs: mytabs,
            ),
          ),
          body: TabBarView(
            children: mytabs.map((Tab tab) {
              return Center(child: Text(tab.text));
            }).toList(),
          ),
        ),
      ),
    );
  }
}
