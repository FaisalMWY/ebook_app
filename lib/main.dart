import 'package:ebook_app/providers/books_provider.dart';
import 'package:ebook_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.grey[900],
        ),
        home: ChangeNotifierProvider(
          create: (context) {
            return BooksProvider();
          },
          child: const HomeScreen(),
        ));
  }
}
