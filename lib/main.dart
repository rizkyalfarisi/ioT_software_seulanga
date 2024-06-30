import 'package:flutter/material.dart';
import 'first_page.dart';

void main() {
  runApp(SeulangaApp());
}

class SeulangaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seulanga App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FirstPage(),
    );
  }
}
