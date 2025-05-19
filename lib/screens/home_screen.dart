import 'package:flutter/material.dart';
import '../models/task.dart';
import '../widgets/task_tile.dart';
import '../widgets/task_input.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Task> tasks = [];

  void addTask(String taskTitle) {
    setState(() {
      tasks.add(Task(title: taskTitle));
    });
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  void toggleTask(int index) {
    setState(() {
      tasks[index].toggleDone();
    });
  }

  void editTask(int index, String newTitle) {
    setState(() {
      tasks[index].title = newTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To-Do List')),
      body: Column(
        children: [
          TaskInput(onSubmit: addTask),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder:
                  (context, index) => TaskTile(
                    task: tasks[index],
                    onToggle: () => toggleTask(index),
                    onDelete: () => deleteTask(index),
                    onEdit: (newTitle) => editTask(index, newTitle),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
