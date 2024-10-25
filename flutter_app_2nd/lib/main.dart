import 'package:flutter/material.dart';
import 'package:flutter_app_2nd/dummy_data/dummy_data.dart';
import 'package:flutter_app_2nd/screens/categories.dart';
import 'package:flutter_app_2nd/screens/meals.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: theme,
      home: const CategoriesScreen(
        screenTitle: "Categories here",
      ),
    );
  }
}
