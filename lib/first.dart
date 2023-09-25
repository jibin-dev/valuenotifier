import 'dart:math';

import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  var rot=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('value notifier'),),
    body: Center(
      child: Transform.rotate(angle: (rot * (pi/180)), child: _getcontainer(),)),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
  rot += 30;
  if (rot >= 180){
    rot=0;
  }
});
      },
      child: Icon(Icons.rotate_left),
      ),
    );
  }
  Container _getcontainer(){
    return Container(
      color: Colors.amber,
      height: 200,
      width: 200,
    );
  }
}