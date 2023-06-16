import 'package:auto_size_text/auto_size_text.dart';
import 'package:book_app/src/model/book/book.dart';
import 'package:book_app/src/utils/tokens/tokens_colors.dart';
import 'package:book_app/src/view/widget/books/button_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.book,
  });

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        child: Row(
          children: [
            Container(
                width: 30.w,
                height: 40.w,
                decoration: const BoxDecoration(
                  color: keppel,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: book.volumeInfo?.imageLinks?.smallThumbnail != null
                    ? Image.network(
                        book.volumeInfo!.imageLinks!.smallThumbnail.toString(),
                        fit: BoxFit.cover,
                      )
                    : SizedBox()),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    book.volumeInfo!.title.toString(),
                    maxLines: 2,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: black,
                    ),
                  ),
                  AutoSizeText(
                    book.volumeInfo!.description.toString(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    minFontSize: 10,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w500,
                      color: black,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      Align(
                          alignment: Alignment.bottomRight,
                          child: ButtonDetails(
                            book: book,
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
