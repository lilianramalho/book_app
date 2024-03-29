import 'package:book_app/src/model/book/image_link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'volume_info.freezed.dart';
part 'volume_info.g.dart';

@freezed
class VolumeInfo with _$VolumeInfo {
  const factory VolumeInfo({
    required String? title,
    @Default([
      "Autores não identificados",
    ])
    List<String>? authors,
    required String? publisher,
    required String? publishedDate,
    @Default('Sem descrição') String? description,
    required int? pageCount,
    required String? printType,
    @Default([
      "Categorias não identificadas",
    ])
    List<String>? categories,
    required ImageLink? imageLinks,
    required String? language,
  }) = _VolumeInfo;

  factory VolumeInfo.fromJson(Map<String, Object?> json) =>
      _$VolumeInfoFromJson(json);
}
