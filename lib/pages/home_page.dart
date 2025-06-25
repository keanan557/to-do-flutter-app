import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  List toDoList = [
    ['Play Games', false],
  ['Drink coffee', false],
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
        return Padding(
          padding: const EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: 0,
          ),

          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(15)
            ),


            child: Text(
              toDoList[index][0],
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        );
      })
    );
  }
}