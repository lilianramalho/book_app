import 'package:auto_size_text/auto_size_text.dart';
import 'package:book_app/src/controller/book%20details/book_details.controller.dart';
import 'package:book_app/src/model/book/book.dart';
import 'package:book_app/src/utils/tokens/tokens_colors.dart';
import 'package:book_app/src/view/widget/book%20details/buy_button.dart';
import 'package:book_app/src/view/widget/book%20details/container_image_book.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Book book = Get.arguments as Book;
    final BookDetailsController bookDetailsController =
        Get.put(BookDetailsController());
    return Scaffold(
      backgroundColor: yellow,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: keppel),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          book.volumeInfo?.imageLinks?.smallThumbnail != null
              ? ContainerImageBook(
                  imageLink:
                      book.volumeInfo!.imageLinks!.smallThumbnail.toString(),
                )
              : const SizedBox(),
          Container(
            width: 100.w,
            height: 55.h,
            decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, top: 5),
                      child: Text(
                        book.volumeInfo!.title.toString(),
                        style: GoogleFonts.nunito(
                            color: black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 25, top: 5, bottom: 5),
                      child: Text(
                        bookDetailsController.getAuthors(book: book),
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: secondGray,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 200.px,
                      height: 1,
                      decoration: const BoxDecoration(
                          color: keppel,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: AutoSizeText(
                      book.volumeInfo!.description.toString(),
                      maxLines: 10,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
                    child: Text(
                      bookDetailsController.getCategories(book: book),
                      style: GoogleFonts.nunito(
                        fontSize: 12,
                        color: secondGray,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        BuyButton(
                          bookDetailsController: bookDetailsController,
                          book: book,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Obx(
                          () => StarButton(
                              isStarred: bookDetailsController.favorited.value,
                              iconColor: secondYellow,
                              valueChanged: (value) {
                                bookDetailsController.setFavorite(
                                    book: book,
                                    isFavorited: value);
                              }),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
