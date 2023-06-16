// This file is "main.dart"
import 'package:book_app/src/utils/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'image_link.freezed.dart';
part 'image_link.g.dart';

@freezed
class ImageLink with _$ImageLink {
  const factory ImageLink({
    @Default(emptyString) String smallThumbnail,
    @Default(emptyString) String thumbnail,
  }) = _ImageLink;

  factory ImageLink.fromJson(Map<String, Object?> json)
      => _$ImageLinkFromJson(json);
}