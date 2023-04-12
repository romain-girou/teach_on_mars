// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModelPost _$DataModelPostFromJson(Map<String, dynamic> json) {
  return _DataModelPost.fromJson(json);
}

/// @nodoc
mixin _$DataModelPost {
  String get id => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get excerpt => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelPostCopyWith<DataModelPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelPostCopyWith<$Res> {
  factory $DataModelPostCopyWith(
          DataModelPost value, $Res Function(DataModelPost) then) =
      _$DataModelPostCopyWithImpl<$Res, DataModelPost>;
  @useResult
  $Res call({String id, int type, String title, String excerpt, String text});
}

/// @nodoc
class _$DataModelPostCopyWithImpl<$Res, $Val extends DataModelPost>
    implements $DataModelPostCopyWith<$Res> {
  _$DataModelPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? excerpt = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataModelPostCopyWith<$Res>
    implements $DataModelPostCopyWith<$Res> {
  factory _$$_DataModelPostCopyWith(
          _$_DataModelPost value, $Res Function(_$_DataModelPost) then) =
      __$$_DataModelPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int type, String title, String excerpt, String text});
}

/// @nodoc
class __$$_DataModelPostCopyWithImpl<$Res>
    extends _$DataModelPostCopyWithImpl<$Res, _$_DataModelPost>
    implements _$$_DataModelPostCopyWith<$Res> {
  __$$_DataModelPostCopyWithImpl(
      _$_DataModelPost _value, $Res Function(_$_DataModelPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? excerpt = null,
    Object? text = null,
  }) {
    return _then(_$_DataModelPost(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModelPost implements _DataModelPost {
  const _$_DataModelPost(
      {required this.id,
      required this.type,
      required this.title,
      required this.excerpt,
      required this.text});

  factory _$_DataModelPost.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelPostFromJson(json);

  @override
  final String id;
  @override
  final int type;
  @override
  final String title;
  @override
  final String excerpt;
  @override
  final String text;

  @override
  String toString() {
    return 'DataModelPost(id: $id, type: $type, title: $title, excerpt: $excerpt, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataModelPost &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, title, excerpt, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataModelPostCopyWith<_$_DataModelPost> get copyWith =>
      __$$_DataModelPostCopyWithImpl<_$_DataModelPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelPostToJson(
      this,
    );
  }
}

abstract class _DataModelPost implements DataModelPost {
  const factory _DataModelPost(
      {required final String id,
      required final int type,
      required final String title,
      required final String excerpt,
      required final String text}) = _$_DataModelPost;

  factory _DataModelPost.fromJson(Map<String, dynamic> json) =
      _$_DataModelPost.fromJson;

  @override
  String get id;
  @override
  int get type;
  @override
  String get title;
  @override
  String get excerpt;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_DataModelPostCopyWith<_$_DataModelPost> get copyWith =>
      throw _privateConstructorUsedError;
}
