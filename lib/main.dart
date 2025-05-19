import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 104, 58, 183),
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 18.0),
          bodyMedium: TextStyle(fontSize: 16.0),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 169, 183, 58),
          foregroundColor: Colors.white,
          elevation: 5,
          centerTitle: true,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
