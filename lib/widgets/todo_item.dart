import 'package:flutter/material.dart';
import 'package:to_do_aop_final_project/constants/colors.dart';
import 'package:to_do_aop_final_project/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem(
      {super.key,
      required this.todo,
      required this.onToDoChanged,
      required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        leading: Icon(
          todo.isDone! ? Icons.check_box : Icons.check_box_outline_blank,
          color: blue,
        ),
        title: Text(
          todo.toDoText!,
          style: TextStyle(
              fontSize: 16,
              color: black,
              decoration: todo.isDone! ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {
              onDeleteItem(todo.id);
            },
            icon: const Icon(Icons.delete),
            iconSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
