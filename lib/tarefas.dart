import 'package:flutter/material.dart';

class Task {
  final String title;
  final String description;
  bool isCompleted;

  Task({
    required this.title,
    required this.description,
    this.isCompleted = false,
  });
}

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = []; // Lista de tarefas

  List<Task> get tasks => _tasks;

  void addTarefa(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  void removerTarefa(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}