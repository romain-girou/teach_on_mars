// ignore_for_file: avoid_redundant_argument_values, prefer_const_constructors, prefer_final_locals, omit_local_variable_types, lines_longer_than_80_chars, void_checks

import 'package:bloc_test/bloc_test.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:teach_on_mars/data_bloc/my_data_bloc.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:http/http.dart' as http;

void main() {
WidgetsFlutterBinding.ensureInitialized();
  group('Bloc Success Scenarios: ', () {
    late Dio dio;
    late DioAdapter dioAdapter;
    const dataUrl = 'https://interview-dev.teachonmars.com/interview-api.php';
    List<dynamic> data = [
			{
				'id': '64351eb7e34c4',
				'type': 2,
				'title': 'No-Brainer',
				'picture': {
					'width': 1200,
					'height': 800,
					'url': 'https://picsum.photos/1200/800'
				},
				'author': 'Romain Briaux'
    	},
		];

    setUp(() {
      dio = Dio();
      dioAdapter = DioAdapter(dio: dio);
      dio.httpClientAdapter = dioAdapter;
    });

    blocTest<MyDataBloc, MyDataState>(
      'When data is empty',
      setUp: () {
        return dioAdapter.onGet(
          dataUrl,
          (request) => request.reply(200, []),
        );
      },
      build: () => MyDataBloc(dataRepository: DataRepositoryOperations(dio: dio)),
      wait: const Duration(milliseconds: 500),
      expect: () => <MyDataState>[
				MyDataState(
					status: MyDataStatus.failure, 
					hasReachedMax: false, 
					myData: const [],
	  		),
			],
    );

		blocTest<MyDataBloc, MyDataState>(
      'When data is not empty',
      setUp: () {
        return dioAdapter.onGet(
          dataUrl,
          (request) => request.reply(200, data),
        );
      },
      build: () => MyDataBloc(dataRepository: DataRepositoryOperations(dio: dio)),
      wait: const Duration(milliseconds: 500),
      expect: () => <MyDataState>[
				MyDataState(
					status: MyDataStatus.success, 
					hasReachedMax: false, 
					myData: data,
	  		),
      ],
    );
	});
}
