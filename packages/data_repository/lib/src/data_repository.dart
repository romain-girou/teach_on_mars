import '../data_repository.dart';


abstract class DataRepository {
	
	Future<List<dynamic>> fetchData();

}
