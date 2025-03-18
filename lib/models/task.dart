class Task {
  final int id;
  String title;
  bool isDone;

  Task({required this.id, required this.title, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }

  @override
  String toString() {
    return 'Task{id: $id, title: $title, isDone: $isDone}';
  }

}