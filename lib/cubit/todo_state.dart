part of 'todo_cubit.dart';

class TodoState extends Equatable {
  const TodoState({required this.todolist});

  final List<TodoModel> todolist;

  @override
  List<Object?> get props => [todolist];

  TodoState copyWith({List<TodoModel>? todolist}) {
    return TodoState(todolist: todolist ?? this.todolist);
  }
}
