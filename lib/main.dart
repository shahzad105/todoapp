import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screens/tasks_screen.dart';
import 'package:todo_app/models/task_data.dart'; // Assuming TaskData is your ChangeNotifier class

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(), // Provide an instance of TaskData
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
