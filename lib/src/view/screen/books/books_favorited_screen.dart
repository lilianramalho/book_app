import 'package:book_app/src/controller/book%20details/book_details.controller.dart';
import 'package:book_app/src/utils/tokens/tokens_colors.dart';
import 'package:book_app/src/view/widget/books/book_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BooksFavoritedScreen extends StatelessWidget {
  const BooksFavoritedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BookDetailsController bookDetailsController =
    Get.put(BookDetailsController());

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppLocalizations.of(context).results,
                style: GoogleFonts.dosis(
                    fontSize: 30, color: black, fontWeight: FontWeight.bold),
              ),
            ),

              BookList(
                books: bookDetailsController.booksFavorited,
              )

          ],
        ),
      ),
    );
  }
}
