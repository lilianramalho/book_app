import 'package:book_app/src/data/provider/volume/volume_data.dart';

Future<Map<String, dynamic>> getListVolumesRepo({required String text}) async {
  Map<String, dynamic> map = await getListVolumes(text: text);
  return map;
}