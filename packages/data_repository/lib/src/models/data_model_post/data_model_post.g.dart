// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModelPost _$$_DataModelPostFromJson(Map<String, dynamic> json) =>
    _$_DataModelPost(
      id: json['id'] as String,
      type: json['type'] as int,
      title: json['title'] as String,
      excerpt: json['excerpt'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_DataModelPostToJson(_$_DataModelPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'excerpt': instance.excerpt,
      'text': instance.text,
    };
