import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/todo_list.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
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

  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
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
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20
              ),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Add New ..',
                  filled: true,
                  fillColor: Colors.deepOrange.shade200,

                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.deepOrange,
                    ),
                        borderRadius:BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.deepOrange,
                    ),
                    borderRadius:BorderRadius.circular(15),
                  ),
                ),
              ),
            )
            ),
            FloatingActionButton(
              onPressed: saveNewTask,
            child: const Icon(Icons.add),
                ),
          ],
        ),
    );
  }
}