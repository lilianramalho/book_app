import 'package:book_app/src/controller/volume/book_controller.dart';
import 'package:book_app/src/model/book/book.dart';
import 'package:book_app/src/utils/tokens/tokens_colors.dart';
import 'package:book_app/src/view/widget/books/book_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

class BookList extends StatelessWidget {
  const BookList({super.key, required this.bookController});

  final BookController bookController;

  @override
  Widget build(BuildContext context) {
    return Obx(
        () => !bookController.isLoarding.value || bookController.book.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                    itemCount: bookController.book.length,
                    itemBuilder: (context, index) {
                      return BookCard(
                        book: bookController.book.elementAt(index),
                      );
                    }),
              )
            : const Center(
                child: SizedBox(
                    width: 50,
                    height: 50,
                    child: LoadingIndicator(
                      indicatorType: Indicator.ballClipRotate,
                      colors: [keppel],
                    ))));
  }
}
