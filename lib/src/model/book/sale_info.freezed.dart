// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleInfo _$SaleInfoFromJson(Map<String, dynamic> json) {
  return _SaleInfo.fromJson(json);
}

/// @nodoc
mixin _$SaleInfo {
  String? get buyLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleInfoCopyWith<SaleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleInfoCopyWith<$Res> {
  factory $SaleInfoCopyWith(SaleInfo value, $Res Function(SaleInfo) then) =
      _$SaleInfoCopyWithImpl<$Res, SaleInfo>;
  @useResult
  $Res call({String? buyLink});
}

/// @nodoc
class _$SaleInfoCopyWithImpl<$Res, $Val extends SaleInfo>
    implements $SaleInfoCopyWith<$Res> {
  _$SaleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyLink = freezed,
  }) {
    return _then(_value.copyWith(
      buyLink: freezed == buyLink
          ? _value.buyLink
          : buyLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaleInfoCopyWith<$Res> implements $SaleInfoCopyWith<$Res> {
  factory _$$_SaleInfoCopyWith(
          _$_SaleInfo value, $Res Function(_$_SaleInfo) then) =
      __$$_SaleInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? buyLink});
}

/// @nodoc
class __$$_SaleInfoCopyWithImpl<$Res>
    extends _$SaleInfoCopyWithImpl<$Res, _$_SaleInfo>
    implements _$$_SaleInfoCopyWith<$Res> {
  __$$_SaleInfoCopyWithImpl(
      _$_SaleInfo _value, $Res Function(_$_SaleInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyLink = freezed,
  }) {
    return _then(_$_SaleInfo(
      buyLink: freezed == buyLink
          ? _value.buyLink
          : buyLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaleInfo with DiagnosticableTreeMixin implements _SaleInfo {
  const _$_SaleInfo({this.buyLink = emptyString});

  factory _$_SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$$_SaleInfoFromJson(json);

  @override
  @JsonKey()
  final String? buyLink;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SaleInfo(buyLink: $buyLink)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SaleInfo'))
      ..add(DiagnosticsProperty('buyLink', buyLink));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleInfo &&
            (identical(other.buyLink, buyLink) || other.buyLink == buyLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, buyLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaleInfoCopyWith<_$_SaleInfo> get copyWith =>
      __$$_SaleInfoCopyWithImpl<_$_SaleInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleInfoToJson(
      this,
    );
  }
}

abstract class _SaleInfo implements SaleInfo {
  const factory _SaleInfo({final String? buyLink}) = _$_SaleInfo;

  factory _SaleInfo.fromJson(Map<String, dynamic> json) = _$_SaleInfo.fromJson;

  @override
  String? get buyLink;
  @override
  @JsonKey(ignore: true)
  _$$_SaleInfoCopyWith<_$_SaleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
