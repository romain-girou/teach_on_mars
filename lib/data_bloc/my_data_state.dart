part of 'my_data_bloc.dart';

enum MyDataStatus { initial, success, failure }

class MyDataState extends Equatable {
  const MyDataState({
    this.status = MyDataStatus.initial,
    this.myData = const <dynamic>[],
    this.hasReachedMax = false,
  });

  final MyDataStatus status;
  final List<dynamic> myData;
  final bool hasReachedMax;

  MyDataState copyWith({
    MyDataStatus? status,
    List<dynamic>? posts,
    bool? hasReachedMax,
  }) {
    return MyDataState(
      status: status ?? this.status,
      myData: posts ?? this.myData,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return '''myDataState { status: $status, hasReachedMax: $hasReachedMax, myData: ${myData.length} }''';
  }

  @override
  List<Object> get props => [status, myData, hasReachedMax];
}
