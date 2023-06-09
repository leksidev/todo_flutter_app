import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'UI/screens/tasks_screen.dart';
import 'package:todo_flutter_app/models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.indigo.shade700,
              background: Colors.indigo.shade500),
        ),
        home: const TasksScreen(),
      ),
    );
  }
}
