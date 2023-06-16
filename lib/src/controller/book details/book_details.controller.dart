import 'package:book_app/src/model/book/book.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsController extends GetxController {
 late RxList<Book> booksFavorited;

  String getAuthors({required Book book}) {
    String authors;
    if (book.volumeInfo!.authors!.length > 1) {
      authors = book.volumeInfo!.authors!.join(', ');
    } else {
      authors = book.volumeInfo!.authors!.first;
    }
    return authors;
  }

  String getCategories({required Book book}) {
    String categories;
    if (book.volumeInfo!.categories!.length > 1) {
      categories = book.volumeInfo!.categories!.join(', ');
    } else {
      categories = book.volumeInfo!.categories!.first;
    }
    return categories;
  }

  urlLauncherBuy({required Book book}) async {
    if (book.saleInfo!.buyLink!.isNotEmpty) {
      if (!await launchUrl(
        Uri.parse(book.saleInfo!.buyLink.toString()),
        mode: LaunchMode.externalApplication,
      )) {
        throw Exception(
            'Could not launch ${Uri.parse(book.saleInfo!.buyLink.toString())}');
      }
    }
  }

  setFavorite({required Book book, required bool isFavorited}) {
    book = book.copyWith(favorite: isFavorited);
    if (book.favorite && !booksFavorited.any((element) => element.id == book.id)) {
      booksFavorited.add(book);
    }
  }
}
