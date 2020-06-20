import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CustomItems.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  final listPersonas = const ['luis', 'pedro', 'juan'];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
          //navigationBar: CupertinoNavigationBar( middle: Text('Cupertino App Bar'),),
          //child: Center( child: Container( child: Text('Hello World'),),),
          child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('List Demo App'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return CustomItemList(titulo: listPersonas[index]);
            }, childCount: listPersonas.length),
          ),
        ],
        //SliverFillRemaining( child: Center(child: Text('Hola mundo')),)
      )),
    );
  }
}
