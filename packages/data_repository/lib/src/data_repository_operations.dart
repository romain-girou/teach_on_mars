// ignore_for_file: omit_local_variable_types, prefer_final_locals, lines_longer_than_80_chars

import 'dart:convert';
import 'package:data_repository/data_repository.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class FetchDataException implements Exception {}

class DataRepositoryOperations implements DataRepository {
	
	@override
	Future<List<dynamic>> fetchData() async {
		try {
			final Uri url;
			if(kIsWeb) {
				url = Uri.https('cors-anywhere.herokuapp.com', '/https://interview-dev.teachonmars.com/interview-api.php');
			} else {
				url = Uri.https('interview-dev.teachonmars.com', '/interview-api.php');
			}
			final data = await http.get(url);
			if(data.statusCode == 200) {
				List<dynamic> test = jsonDecode(data.body) as List<dynamic>;
				final List<Map<String, dynamic>> dataConvert = List<Map<String, dynamic>>.from(test);
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
			print(e.toString());
			throw FetchDataException();
		}
	}

}
