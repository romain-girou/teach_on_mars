// ignore_for_file: sort_constructors_first, omit_local_variable_types, prefer_final_locals

import 'package:bloc/bloc.dart';
import 'package:data_repository/data_repository.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'my_data_event.dart';
part 'my_data_state.dart';

const _postLimit = 20;

class MyDataBloc extends Bloc<MyDataEvent, MyDataState> {
	final DataRepository _dataRepository;

  MyDataBloc({
		required DataRepository dataRepository,
	}) : 	_dataRepository = dataRepository,
		super(const MyDataState()) {
    on<FetchData>((event, emit) async {
			try{
				if (state.status == MyDataStatus.initial) {
					List<dynamic> myData = await _dataRepository.fetchData();
					return myData.isEmpty
					? emit(state.copyWith(status: MyDataStatus.failure))
					: emit(
						state.copyWith(
							status: MyDataStatus.success,
							posts: myData,
							hasReachedMax: false,
						),
					);
				}

				List<dynamic> myData = await _dataRepository.fetchData();
				myData.isEmpty
					? emit(state.copyWith(status: MyDataStatus.failure))
					: emit(
						state.copyWith(
							status: MyDataStatus.success,
							posts: List.of(state.myData)..addAll(myData),
							hasReachedMax: false,
						),
					);
			} catch (e) {
				emit(state.copyWith(status: MyDataStatus.failure));
			}
    });
  }
}
