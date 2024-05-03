import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Practice', style: TextStyle(color: Colors.yellowAccent),),),
      backgroundColor: Colors.white10,
      body: Center(
        child: Container(
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          width: 300,
          child: Stack(
            fit: StackFit.loose,
            alignment: AlignmentDirectional(1, 3),
            children: [
              Icon(Icons.add, size: 30, color: Colors.purpleAccent,),
              Icon(Icons.add, size: 30, color: Colors.yellowAccent,),
              Icon(Icons.add, size: 30, color: Colors.purpleAccent,),
            ],
          ),
        ),
      ),
    );
  }
}
