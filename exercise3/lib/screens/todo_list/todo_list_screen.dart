import 'package:flutter/material.dart';
import 'package:exercise3/models/todo.dart';

import 'bar.dart';
import 'body.dart';

// This combines the two, bar and body in one screen

class ToDoScreen extends StatefulWidget {
  final List<Todo> t;
  ToDoScreen(this.t);

  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: const SafeArea(
          child: Scaffold(
            appBar: MyBar(),
            body: TBody(),
          ),
        ));
  }
}
