
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



class MinePage extends StatefulWidget {
  MinePage({Key? key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

// class _MinePageState extends State<MinePage> with NavigatorObserver {
class _MinePageState extends State<MinePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('我的'),
        ),
        body: Center(
          child: Text('我的'),
        )
    );
  }
}