// ignore_for_file: omit_local_variable_types, prefer_final_locals, lines_longer_than_80_chars, sort_constructors_first

import 'package:data_repository/data_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class FetchDataException implements Exception {}

class DataRepositoryOperations implements DataRepository {
	final Dio dio;

  DataRepositoryOperations({required this.dio});
	
	@override
	Future<List<dynamic>> fetchData() async {
		try {
			final Response response;

			if(kIsWeb) {
				response = await dio.get('http://cors-anywhere.herokuapp.com/https://interview-dev.teachonmars.com/interview-api.php');
			} else {
				response = await dio.get('https://interview-dev.teachonmars.com/interview-api.php');
			}

			if(response.statusCode == 200) {
				final List<Map<String, dynamic>> dataConvert = List<Map<String, dynamic>>.from(response.data as List);
				List<dynamic> myData = [];
				
				for (var element in dataConvert) {
					if(element['type'] == 1) {
						myData.add(DataModelPost.fromJson(element));
					} else if (element['type'] == 2) {
						myData.add(DataModelPicture.fromJson(element));
					}	
				}
				return myData;
			} else {
				return [];
			}
		} catch (e) {
			throw FetchDataException();
		}
	}

}
