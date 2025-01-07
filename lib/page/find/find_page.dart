import 'package:flutter/material.dart';



class FindPage extends StatefulWidget {
  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('发现'),
        ),
        body: Center(
          child: Text('发现'),
        )
    );
  }
}

