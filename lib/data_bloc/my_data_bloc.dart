// ignore_for_file: sort_constructors_first, omit_local_variable_types, prefer_final_locals

import 'package:bloc/bloc.dart';
import 'package:data_repository/data_repository.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

part 'my_data_event.dart';
part 'my_data_state.dart';

const throttleDuration = Duration(milliseconds: 200);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class MyDataBloc extends Bloc<MyDataEvent, MyDataState> {
	final DataRepository _dataRepository;

  MyDataBloc({
		required DataRepository dataRepository,
	}) : 	_dataRepository = dataRepository,
		super(const MyDataState()) {
    on<FetchData>(     
			transformer: throttleDroppable(throttleDuration),
			(event, emit) async {
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
    	}
		);
		add(FetchData());
  }
}
