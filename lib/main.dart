import 'package:book_app/src/controller/volume/book_controller.dart';
import 'package:book_app/src/data/provider/volume/volume_data.dart';
import 'package:book_app/src/view/screen/book/books_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: BooksScreen(),
    );
  }
}