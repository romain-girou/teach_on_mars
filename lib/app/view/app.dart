// ignore_for_file: prefer_const_constructors

import 'package:data_repository/data_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teach_on_mars/app/view/dark_theme.dart';
import 'package:teach_on_mars/app/view/light_theme.dart';
import 'package:teach_on_mars/config/config.dart';
import 'package:teach_on_mars/data_bloc/my_data_bloc.dart';
import 'package:teach_on_mars/l10n/l10n.dart';
import 'package:teach_on_mars/screens/home/home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

	@override
  void initState() {
    currenTheme.addListener(() {
			setState(() {});
		});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
			debugShowCheckedModeBanner: false,
			theme: lightTheme,
      darkTheme: darkTheme,
			themeMode: currenTheme.currenTheme(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
			home: BlocProvider<MyDataBloc>(
				create: (context) => MyDataBloc(
					dataRepository: DataRepositoryOperations(dio: Dio()),
				)..add(FetchData()),
				child: HomeScreen(),
			)
		);
  }
}
