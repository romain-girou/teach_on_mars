part of 'my_data_bloc.dart';

@immutable
abstract class MyDataEvent extends Equatable {
	const MyDataEvent();

  @override
  List<Object> get props => [];
}

class FetchData extends MyDataEvent {}
