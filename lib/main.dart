import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp4/cubit/todo_cubit.dart';
import 'package:todoapp4/pages/home_page.dart';

import 'model/todo_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: const MyHomePage(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final todocubit = context.read<TodoCubit>();
              final newtodo = TodoModel(name: "test", dis: "test");
              todocubit.addTodo(newtodo);
            },
          ),
        ),
      ),
    );
  }
}
