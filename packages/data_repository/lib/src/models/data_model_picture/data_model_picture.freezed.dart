// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModelPicture _$DataModelPictureFromJson(Map<String, dynamic> json) {
  return _DataModelPicture.fromJson(json);
}

/// @nodoc
mixin _$DataModelPicture {
  String get id => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Map<String, dynamic> get picture => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelPictureCopyWith<DataModelPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelPictureCopyWith<$Res> {
  factory $DataModelPictureCopyWith(
          DataModelPicture value, $Res Function(DataModelPicture) then) =
      _$DataModelPictureCopyWithImpl<$Res, DataModelPicture>;
  @useResult
  $Res call(
      {String id,
      int type,
      String title,
      Map<String, dynamic> picture,
      String author});
}

/// @nodoc
class _$DataModelPictureCopyWithImpl<$Res, $Val extends DataModelPicture>
    implements $DataModelPictureCopyWith<$Res> {
  _$DataModelPictureCopyWithImpl(this._value, this._then);

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
    Object? picture = null,
    Object? author = null,
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
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataModelPictureCopyWith<$Res>
    implements $DataModelPictureCopyWith<$Res> {
  factory _$$_DataModelPictureCopyWith(
          _$_DataModelPicture value, $Res Function(_$_DataModelPicture) then) =
      __$$_DataModelPictureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int type,
      String title,
      Map<String, dynamic> picture,
      String author});
}

/// @nodoc
class __$$_DataModelPictureCopyWithImpl<$Res>
    extends _$DataModelPictureCopyWithImpl<$Res, _$_DataModelPicture>
    implements _$$_DataModelPictureCopyWith<$Res> {
  __$$_DataModelPictureCopyWithImpl(
      _$_DataModelPicture _value, $Res Function(_$_DataModelPicture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? picture = null,
    Object? author = null,
  }) {
    return _then(_$_DataModelPicture(
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
      picture: null == picture
          ? _value._picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModelPicture implements _DataModelPicture {
  const _$_DataModelPicture(
      {required this.id,
      required this.type,
      required this.title,
      required final Map<String, dynamic> picture,
      required this.author})
      : _picture = picture;

  factory _$_DataModelPicture.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelPictureFromJson(json);

  @override
  final String id;
  @override
  final int type;
  @override
  final String title;
  final Map<String, dynamic> _picture;
  @override
  Map<String, dynamic> get picture {
    if (_picture is EqualUnmodifiableMapView) return _picture;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_picture);
  }

  @override
  final String author;

  @override
  String toString() {
    return 'DataModelPicture(id: $id, type: $type, title: $title, picture: $picture, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataModelPicture &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._picture, _picture) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, title,
      const DeepCollectionEquality().hash(_picture), author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataModelPictureCopyWith<_$_DataModelPicture> get copyWith =>
      __$$_DataModelPictureCopyWithImpl<_$_DataModelPicture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelPictureToJson(
      this,
    );
  }
}

abstract class _DataModelPicture implements DataModelPicture {
  const factory _DataModelPicture(
      {required final String id,
      required final int type,
      required final String title,
      required final Map<String, dynamic> picture,
      required final String author}) = _$_DataModelPicture;

  factory _DataModelPicture.fromJson(Map<String, dynamic> json) =
      _$_DataModelPicture.fromJson;

  @override
  String get id;
  @override
  int get type;
  @override
  String get title;
  @override
  Map<String, dynamic> get picture;
  @override
  String get author;
  @override
  @JsonKey(ignore: true)
  _$$_DataModelPictureCopyWith<_$_DataModelPicture> get copyWith =>
      throw _privateConstructorUsedError;
}
