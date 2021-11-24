import 'task.dart';
import 'todo.dart';
//taskToDo-define the model class taskToDo here.

final taskToDo = <Todo>[
  Todo("My House Task", [
    Task("Homework study", false),
    Task("helping my parents", false),
    Task("cleaning my room", true),
    Task("washing car", false),
    Task("make my own food", false)
  ]),
  Todo("prayers to do", [
    Task("Morning pray", true),
    Task("Noon Prayer", true),
    Task("Afternoon Prayer", true),
    Task("evening prayer", true),
    Task("Afterevening Prayer", true)
  ]),
  Todo("Going out to bazar", [
    Task("buying food for my home", true),
    Task("buying clothes", true),
    Task("going to cafe shop", true),
    Task("hangout with my friends", true)
  ]),
];
