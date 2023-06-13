import 'package:book_app/src/model/book/book.dart';
import 'package:book_app/src/repository/volume/volume_repository.dart';
import 'package:book_app/src/utils/constants/constants.dart';
import 'package:get/get.dart';

class VolumeController extends GetxController {
  RxList<Book> volume = RxList<Book>();

  getListVolumes() async {
    Map<String, dynamic> result = await getListVolumesRepo();
    volume = result[itemsKey]
        .map<Book>((json) {
          return Book.fromJson(json);
        })
        .cast<Book>()
        .toList();
  }
}
