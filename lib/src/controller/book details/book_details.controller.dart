import 'dart:convert';

import 'package:book_app/src/model/book/book.dart';
import 'package:book_app/src/utils/constants/constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsController extends GetxController {
  RxList<Book> booksFavorited = <Book>[].obs;
  RxBool favorited = false.obs;
  late SharedPreferences sharedPreferences;


  @override
  void onReady() async {
    await readList();
    super.onReady();
  }

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

  setFavorite({required Book book,required bool isFavorited}) async {
    book = book.copyWith(favorite: isFavorited);
    if(isFavorited){
      await readList();
      booksFavorited.add(book);
      await saveList(book: book, favorites: booksFavorited);
    }else{
      await readList();
      booksFavorited.removeWhere((element) => element.id == book.id);
    }
  }

  isFavorited({required Book book}){
    favorited.value = booksFavorited.any((element) => element.id == book.id);
  }

   saveList({required List<Book> favorites, required Book book}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    List<Map<String, dynamic>> jsonList = favorites.map((obj) => obj.toJson()).toList();
    String jsonString = jsonEncode(jsonList);
    await sharedPreferences.setString(listFavoritesShared, jsonString);
  }


  readList() async {
    sharedPreferences = await SharedPreferences.getInstance();
    String? json = sharedPreferences.getString(listFavoritesShared);
    if(json != null){
      List<dynamic> result = jsonDecode(json);
      booksFavorited.value = result.map((value) => Book.fromJson(value)).toList();
    }
  }

}
