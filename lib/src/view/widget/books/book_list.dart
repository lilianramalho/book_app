import 'package:book_app/src/controller/volume/book_controller.dart';
import 'package:book_app/src/model/book/book.dart';
import 'package:book_app/src/utils/tokens/tokens_colors.dart';
import 'package:book_app/src/view/widget/books/book_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

class BookList extends StatelessWidget {
  const BookList({super.key, required this.books});

  final List<Book> books;

  @override
  Widget build(BuildContext context) {
    return
        Expanded(
                child: ListView.builder(
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      return BookCard(
                        book: books.elementAt(index),
                      );
                    }),
              );

  }
}
