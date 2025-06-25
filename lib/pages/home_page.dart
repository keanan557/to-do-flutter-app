import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/todo_list.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ['Play Games', false],
  ['Drink coffee', false],
    ['Code', false],
  // ['code', false]
];

  void checkBoxChanged(int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

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
          onChanged: (value) => checkBoxChanged(index),
        );
      }),
        floatingActionButton: Row(
          children: [
            Expanded(child: TextField()
            ),
            FloatingActionButton(
              onPressed: () {},
            child: Icon(Icons.add),
                ),
          ],
        ),
    );
  }
}