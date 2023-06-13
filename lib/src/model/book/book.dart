// This file is "main.dart"
import 'package:book_app/src/model/book/sale_info.dart';
import 'package:book_app/src/model/book/volume_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required String? id,
    required VolumeInfo? volumeInfo,
    required SaleInfo? saleInfo,
  }) = _Book;

  factory Book.fromJson(Map<String, Object?> json) => _$BookFromJson(json);
}
