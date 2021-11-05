import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todoapp4/model/todo_model.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(const TodoState(todolist: []));

  void addTodo(TodoModel todo) {
    final newtodo = state.copyWith(todolist: [...state.todolist, todo]);
    emit(newtodo);
  }
}
