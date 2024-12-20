import 'package:flutter/material.dart';
import 'package:task_timer_app/screens/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task Timer Tracker',
        theme: ThemeData.dark().copyWith(
          // useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 94, 199, 82),
            brightness: Brightness.dark,
            surface: const Color.fromARGB(255, 0, 0, 0),
          ),
          scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        home: HomeScreen());
  }
}
