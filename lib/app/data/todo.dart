class Todo {
  final String id;
  final String name;
  final String avatar;

  Todo({required this.id, required this.name, required this.avatar});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      name: json['name'],
      avatar: json['avatar'],
    );
  }
}