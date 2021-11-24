import 'package:flutter/material.dart';
import 'package:exercise3/models/todo.dart';
import 'bar.dart';
import 'body.dart';
import 'float.dart';

class ScreenListTask extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final Todo TD;

  ScreenListTask(this.TD, {Key? key}) : super(key: key);

  @override
  _ScreenListTaskState createState() => _ScreenListTaskState();
}

class _ScreenListTaskState extends State<ScreenListTask> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
          child: Scaffold(
            appBar: TaskBar(widget.TD.title),
            body: BodyTask(widget.TD.myTask),
            floatingActionButton: TaskFloat(widget.TD),
          ),
        ));
  }
}
