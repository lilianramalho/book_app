import 'package:book_app/src/model/book/book.dart';
import 'package:book_app/src/repository/volume/volume_repository.dart';
import 'package:book_app/src/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookController extends GetxController {
  RxList<Book> book = <Book>[].obs;

  RxBool isLoarding = false.obs;

  TextEditingController textEditingController = TextEditingController();

  getListBooks({required String text}) async {
    isLoarding.value = true;
    Map<String, dynamic> result = await getListVolumesRepo(text: text);
    book.value = result[itemsKey]
        .map<Book>((json) {
          return Book.fromJson(json);
        })
        .cast<Book>()
        .toList();
    isLoarding.value = true;
  }
}
