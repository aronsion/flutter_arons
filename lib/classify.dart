import 'package:flutter/material.dart';

class ClassifyPage extends StatefulWidget {
  ClassifyPage({Key key}) : super(key: key);

  @override
  _ClassifyStatePage createState() => new _ClassifyStatePage();
}

class _ClassifyStatePage extends State<ClassifyPage> {

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('复仇者联盟'),
            background: Image.network("http://img.haote.com/upload/20180918/2018091815372344164.jpg",fit: BoxFit.fitHeight,),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 100.0,
          delegate: SliverChildBuilderDelegate((BuildContext context,int index){
            return Card(
              child: Container(
                alignment: Alignment.center,
                color: Colors.primaries[(index % 18)],
                child: Text('列表'),
              ),
            );
          }),
        )
      ],
    );
  }
}
