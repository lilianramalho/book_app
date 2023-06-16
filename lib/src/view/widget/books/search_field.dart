import 'package:book_app/src/controller/volume/book_controller.dart';
import 'package:book_app/src/utils/tokens/tokens_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, required this.bookController});

  final BookController bookController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 10),
          width: 90.w,
          height: 5.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: gray,
          ),
          child: TextFormField(
            autofocus: true,
            keyboardType: TextInputType.text,
            controller: bookController.textEditingController,
            onChanged: (value) async {
              if (bookController.textEditingController.text.isNotEmpty) {
                bookController.getListBooks(text: value);
              }
            },
            cursorColor: keppel,
            decoration: InputDecoration(
                focusColor: Colors.transparent,
                icon: const Icon(
                  Icons.search,
                  color: secondGray,
                ),
                hintStyle: GoogleFonts.nunito(
                  color: secondGray,
                  fontWeight: FontWeight.bold,
                ),
                hintText: AppLocalizations.of(context).search,
                border: const OutlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
      ),
    );
    ;
  }
}
