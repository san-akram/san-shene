import 'package:flutter/material.dart';
import 'package:exercise3/models/task.dart';

class BodyTask extends StatefulWidget {
  final List<Task> t;

  BodyTask(this.t);

  @override
  State<BodyTask> createState() => _BodyTaskState();
}

class _BodyTaskState extends State<BodyTask> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              title: Text(
                widget.t[index].title,
                style: widget.t[index].status == true
                    // if it is not checked apply no style
                    ? const TextStyle()
                    // if it is checked, apply line through style
                    : const TextStyle(decoration: TextDecoration.lineThrough),
              ),
              // on click or tap, toggle the status and update the state
              onTap: () {
                setState(() {
                  widget.t[index].status = !widget.t[index].status;
                });
              },
              // on long click or long press, remove the task and update the state
              onLongPress: () {
                setState(() {
                  widget.t.removeAt(index);
                });
              },
            ),
        separatorBuilder: (context, index) => const Divider(
              color: Colors.black,
            ),
        itemCount: widget.t.length);
  }
}
