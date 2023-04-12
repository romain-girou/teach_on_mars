// ignore_for_file: prefer_const_constructors, lines_longer_than_80_chars, avoid_redundant_argument_values

import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teach_on_mars/config/config.dart';
import 'package:teach_on_mars/data_bloc/my_data_bloc.dart';
import 'package:teach_on_mars/l10n/l10n.dart';
import 'package:teach_on_mars/screens/error/error.dart';
import 'package:teach_on_mars/screens/home/view/details/picture_post_details_screen.dart';
import 'package:teach_on_mars/screens/home/view/picture_post_screen.dart';
import 'package:teach_on_mars/screens/home/view/text_post_screen.dart';
import 'package:teach_on_mars/screens/loading/loading.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
	 final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
		final l10n = context.l10n;

    return Scaffold(
			appBar: AppBar(
				elevation: 0,
				leading: IconButton(
					onPressed: () {},
					icon: Icon(Icons.menu),
				),
				title: Text(
					l10n.homeAppBarTitle,
					style: TextStyle(
						fontSize: 22,
					),
				),
				actions: [
					IconButton(
						onPressed: () {
							currenTheme.switchTheme();
						}, 
						icon: Icon(
							currenTheme.currenTheme() == ThemeMode.light 
								? Icons.dark_mode
								: Icons.light_mode,
							),
					),
				],
			),
			body: BlocBuilder<MyDataBloc, MyDataState>(
				builder: (context, state) {
					switch (state.status) {
						case MyDataStatus.failure:
							return ErrorScreen();
						case MyDataStatus.initial:
							return LoadingScreen();
						case MyDataStatus.success:
							return ListView.builder(
								itemCount: state.hasReachedMax
									? state.myData.length
									: state.myData.length + 1,
								controller: _scrollController,
								itemBuilder: (BuildContext context, int i) {
									return i >= state.myData.length
										? Center(
												child: SizedBox(
													height: 24,
													width: 24,
													child: CircularProgressIndicator(strokeWidth: 1.5),
												),
											)
										: state.myData[i] is DataModelPicture
											? Padding(
													padding: EdgeInsets.symmetric(
														vertical: 15, 
														horizontal: MediaQuery.of(context).size.width > 1000
															? 400
															: 16,
													),
													child: GestureDetector(
														onTap: () => Navigator.push(
															context,
															PageRouteBuilder(
																transitionsBuilder: (context, animation, secondaryAnimation, child) {
																	return ScaleTransition(
																		alignment: Alignment.center,
																		scale: Tween<double>(begin: 0.1, end: 1).animate(
																			CurvedAnimation(
																				parent: animation,
																				curve: Curves.easeIn,
																			),
																		),
																		child: child,
																	);
																},
																transitionDuration: Duration(milliseconds: 500),
																pageBuilder: (
																	BuildContext context,
																	Animation<double> animation,
																	Animation<double> secondaryAnimation) {
																	return PicturePostDetailsScreen(dataModelPicture: state.myData[i] as DataModelPicture);
																},
															),
														),
														child: PicturePostScreen(dataModelPicture: state.myData[i] as DataModelPicture),
													),
												)
											: Padding(
													padding: EdgeInsets.symmetric(
														vertical: 15, 
														horizontal: MediaQuery.of(context).size.width > 1000
															? 400
															: 16,
													),
													child: TextPostScreen(dataModelPost: state.myData[i] as DataModelPost),
												);
								},
							);
					}
				},
			),
		);
  }

	@override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
			context.read<MyDataBloc>().add(FetchData());
		}
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
