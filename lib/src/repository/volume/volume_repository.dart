import 'package:book_app/src/data/provider/volume/volume_data.dart';

Future<Map<String, dynamic>> getListVolumesRepo() async {
  Map<String, dynamic> map = await getListVolumes();
  return map;
}