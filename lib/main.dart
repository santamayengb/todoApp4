import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp4/cubit/todo_cubit.dart';
import 'package:todoapp4/model/todo_model.dart';
import 'package:todoapp4/pages/home_page.dart';

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
          floatingActionButton: FloatingActionButton(onPressed: () {
            log("message");
            context
                .read<TodoCubit>()
                .addTodo(TodoModel(name: "name", dis: "dis"));
          }),
        ),
      ),
    );
  }
}
