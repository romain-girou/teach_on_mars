import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_model_picture.freezed.dart';
part 'data_model_picture.g.dart';

@freezed
class DataModelPicture with _$DataModelPicture {

	const factory DataModelPicture({
		required String id,
		required int type,
		required String title,
		required Map<String, dynamic> picture,
		required String author,
	}) = _DataModelPicture;

	factory DataModelPicture.fromJson(Map<String, dynamic> json) 
		=> _$DataModelPictureFromJson(json);
	
}
