import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_model_post.freezed.dart';
part 'data_model_post.g.dart';

@freezed
class DataModelPost with _$DataModelPost {

	const factory DataModelPost({
		required String id,
		required int type,
		required String title,
		required String excerpt,
		required String text,
	}) = _DataModelPost;

	factory DataModelPost.fromJson(Map<String, dynamic> json) 
		=> _$DataModelPostFromJson(json);
	
}
