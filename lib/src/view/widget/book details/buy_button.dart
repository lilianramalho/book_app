import 'package:book_app/src/controller/book%20details/book_details.controller.dart';
import 'package:book_app/src/model/book/book.dart';
import 'package:book_app/src/utils/tokens/tokens_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class BuyButton extends StatelessWidget {
  const BuyButton({super.key, required this.bookDetailsController, required this.book});

  final BookDetailsController bookDetailsController;
  final Book book;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
       await bookDetailsController.urlLauncherBuy(book: book);
      },
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(keppel),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child: Text(AppLocalizations.of(context).buy),
    );
  }
}
