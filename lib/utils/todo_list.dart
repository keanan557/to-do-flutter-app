import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key,
    required this.taskName, required this.taskCompleted, this.onChanged,
  });

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
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


        child: Row(
          children: [
            Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
            ),
            Text(
              taskName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );;
  }
}