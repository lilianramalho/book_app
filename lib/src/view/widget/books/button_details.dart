import 'package:book_app/src/model/book/book.dart';
import 'package:book_app/src/utils/constants/routes.dart';
import 'package:book_app/src/utils/tokens/tokens_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ButtonDetails extends StatelessWidget {
  const ButtonDetails({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed(bookDetailsScreen, arguments: book);
      },
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(keppel),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child: Text(AppLocalizations.of(context).details),
    );
  }
}
