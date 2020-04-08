
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget{

  ChatPage({Key key}):super(key:key);

  @override
  _ChatStatePage createState()=> new _ChatStatePage();
}

class _ChatStatePage extends State<ChatPage>{

  //数据源
  var _list = [1, 2, 3, 4, 5, 6, 7, 8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('关注'),
      ),
      body: Center(
        child: RefreshIndicator(
          onRefresh: () async {
            setState(() {
              _list.add(_list.length + 1);
            });
          },
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  '属性的列表',
                  style:
                  TextStyle(fontSize: 20.0, color: const Color(0xffff678f)),
                ),
              );
            },
            itemCount: _list.length,
            itemExtent: 50,
          ),
        ),
      ),
    );

  }
}