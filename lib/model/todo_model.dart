class TodoModel {
  String name;
  String dis;

  TodoModel({required this.name, required this.dis});

  TodoModel copyWith(String? name, String? dis) {
    return TodoModel(name: name ?? this.name, dis: dis ?? this.dis);
  }
}
