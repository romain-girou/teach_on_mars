// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model_picture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModelPicture _$$_DataModelPictureFromJson(Map<String, dynamic> json) =>
    _$_DataModelPicture(
      id: json['id'] as String,
      type: json['type'] as int,
      title: json['title'] as String,
      picture: json['picture'] as Map<String, dynamic>,
      author: json['author'] as String,
    );

Map<String, dynamic> _$$_DataModelPictureToJson(_$_DataModelPicture instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'picture': instance.picture,
      'author': instance.author,
    };
