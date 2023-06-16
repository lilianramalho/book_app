// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VolumeInfo _$$_VolumeInfoFromJson(Map<String, dynamic> json) =>
    _$_VolumeInfo(
      title: json['title'] as String?,
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ["Autores não identificados"],
      publisher: json['publisher'] as String?,
      publishedDate: json['publishedDate'] as String?,
      description: json['description'] as String? ?? 'Sem descrição',
      pageCount: json['pageCount'] as int?,
      printType: json['printType'] as String?,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ["Categorias não identificadas"],
      imageLinks: json['imageLinks'] == null
          ? null
          : ImageLink.fromJson(json['imageLinks'] as Map<String, dynamic>),
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$_VolumeInfoToJson(_$_VolumeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate,
      'description': instance.description,
      'pageCount': instance.pageCount,
      'printType': instance.printType,
      'categories': instance.categories,
      'imageLinks': instance.imageLinks,
      'language': instance.language,
    };
