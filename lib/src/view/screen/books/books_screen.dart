import 'package:book_app/src/controller/volume/book_controller.dart';
import 'package:book_app/src/utils/tokens/tokens_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:book_app/src/view/widget/books/book_list.dart';
import 'package:book_app/src/view/widget/books/search_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:google_fonts/google_fonts.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BookController bookController = Get.put(BookController());
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        iconTheme: const IconThemeData(color: keppel),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchField(
              bookController: bookController,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppLocalizations.of(context).results,
                style: GoogleFonts.dosis(
                    fontSize: 30, color: black, fontWeight: FontWeight.bold),
              ),
            ),
            BookList(
              bookController: bookController,
            )
          ],
        ),
      ),
    );
  }
}
