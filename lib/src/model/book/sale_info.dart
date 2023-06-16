// This file is "main.dart"
import 'package:book_app/src/utils/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sale_info.freezed.dart';
part 'sale_info.g.dart';

@freezed
class SaleInfo with _$SaleInfo {
  const factory SaleInfo({
    @Default(emptyString) String? buyLink,
  }) = _SaleInfo;

  factory SaleInfo.fromJson(Map<String, Object?> json)
      => _$SaleInfoFromJson(json);
} 