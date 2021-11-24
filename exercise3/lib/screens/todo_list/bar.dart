import 'package:flutter/material.dart';

class MyBar extends StatefulWidget implements PreferredSizeWidget {
  const MyBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  @override
  State<MyBar> createState() => _MyBarState();
}

class _MyBarState extends State<MyBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      title: const Text("My To Do List"),
      centerTitle: false,
      leadingWidth: 0,
    );
  }
}
