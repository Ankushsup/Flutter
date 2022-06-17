import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int a=2;
    double a=30;

    return MaterialApp(
      home: Material(
        child: Center(
          child: Text("welcome to $a days of flutter"),
        )
      ),
    );
  }
}