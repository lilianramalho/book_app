// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageLink _$ImageLinkFromJson(Map<String, dynamic> json) {
  return _ImageLink.fromJson(json);
}

/// @nodoc
mixin _$ImageLink {
  String? get smallThumbnail => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageLinkCopyWith<ImageLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageLinkCopyWith<$Res> {
  factory $ImageLinkCopyWith(ImageLink value, $Res Function(ImageLink) then) =
      _$ImageLinkCopyWithImpl<$Res, ImageLink>;
  @useResult
  $Res call({String? smallThumbnail, String? thumbnail});
}

/// @nodoc
class _$ImageLinkCopyWithImpl<$Res, $Val extends ImageLink>
    implements $ImageLinkCopyWith<$Res> {
  _$ImageLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallThumbnail = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      smallThumbnail: freezed == smallThumbnail
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageLinkCopyWith<$Res> implements $ImageLinkCopyWith<$Res> {
  factory _$$_ImageLinkCopyWith(
          _$_ImageLink value, $Res Function(_$_ImageLink) then) =
      __$$_ImageLinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? smallThumbnail, String? thumbnail});
}

/// @nodoc
class __$$_ImageLinkCopyWithImpl<$Res>
    extends _$ImageLinkCopyWithImpl<$Res, _$_ImageLink>
    implements _$$_ImageLinkCopyWith<$Res> {
  __$$_ImageLinkCopyWithImpl(
      _$_ImageLink _value, $Res Function(_$_ImageLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallThumbnail = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_ImageLink(
      smallThumbnail: freezed == smallThumbnail
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageLink with DiagnosticableTreeMixin implements _ImageLink {
  const _$_ImageLink({required this.smallThumbnail, required this.thumbnail});

  factory _$_ImageLink.fromJson(Map<String, dynamic> json) =>
      _$$_ImageLinkFromJson(json);

  @override
  final String? smallThumbnail;
  @override
  final String? thumbnail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageLink(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageLink'))
      ..add(DiagnosticsProperty('smallThumbnail', smallThumbnail))
      ..add(DiagnosticsProperty('thumbnail', thumbnail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageLink &&
            (identical(other.smallThumbnail, smallThumbnail) ||
                other.smallThumbnail == smallThumbnail) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, smallThumbnail, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageLinkCopyWith<_$_ImageLink> get copyWith =>
      __$$_ImageLinkCopyWithImpl<_$_ImageLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageLinkToJson(
      this,
    );
  }
}

abstract class _ImageLink implements ImageLink {
  const factory _ImageLink(
      {required final String? smallThumbnail,
      required final String? thumbnail}) = _$_ImageLink;

  factory _ImageLink.fromJson(Map<String, dynamic> json) =
      _$_ImageLink.fromJson;

  @override
  String? get smallThumbnail;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_ImageLinkCopyWith<_$_ImageLink> get copyWith =>
      throw _privateConstructorUsedError;
}
