// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'image_link.freezed.dart';
part 'image_link.g.dart';

@freezed
class ImageLink with _$ImageLink {
  const factory ImageLink({
    required String? smallThumbnail,
    required String? thumbnail,
  }) = _ImageLink;

  factory ImageLink.fromJson(Map<String, Object?> json)
      => _$ImageLinkFromJson(json);
}