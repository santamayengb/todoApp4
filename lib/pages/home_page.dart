import 'package:flutter/material.dart';
import 'package:todoapp4/cubit/todo_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp4/model/todo_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoState = context.watch<TodoCubit>().state;
    final todoList = todoState.todolist;

    // context.read<TodoCubit>().addTodo(TodoModel(name: "name", dis: "dis"));

    if (todoList.isEmpty) {
      return Center(
        child: Column(
          children: [
            const Text('No Todo'),
            IconButton(
                onPressed: () {
                  context
                      .read<TodoCubit>()
                      .addTodo(TodoModel(name: "name", dis: "dis"));
                },
                icon: const Icon(Icons.add)),
          ],
        ),
      );
    }

    return ListView.separated(
      itemCount: todoList.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final todo = todoList[index];
        return ListTile(
          title: Text(todo.name),
          subtitle: Text(todo.dis),
          leading: IconButton(
              onPressed: () {
                context
                    .read<TodoCubit>()
                    .addTodo(TodoModel(name: "name", dis: "dis"));
              },
              icon: const Icon(Icons.add)),
        );
      },
    );
  }
}
