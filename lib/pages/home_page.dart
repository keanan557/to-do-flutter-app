import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/todo_list.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  List toDoList = [
    ['Play Games', false],
  ['Drink coffee', false],
    ['Code', false],
  // ['code', false]
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade300,
      appBar: AppBar(
        title: Text(
          'todo app'
        ),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(itemCount: toDoList.length,
          itemBuilder: (BuildContext context,index) {
        return TodoList(
          taskName: toDoList[index][0],
          taskCompleted: toDoList[index][1],
        );
      })
    );
  }
}