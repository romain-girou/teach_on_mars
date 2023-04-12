// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teach_on_mars/data_bloc/my_data_bloc.dart';
import 'package:teach_on_mars/l10n/l10n.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
		final l10n = context.l10n;

    return SizedBox(
			width: MediaQuery.of(context).size.width,
			height: MediaQuery.of(context).size.height,
			child: Padding(
				padding: EdgeInsets.all(15),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
				  children: [
				    Text(
				    	l10n.errorLoading,
				    ),
						SizedBox(height: 20),
						SizedBox(
							height: 50,
							child: TextButton(
								style: TextButton.styleFrom(
									backgroundColor: Color(0xFF2E66D4), 
									shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
								),
								onPressed: () {
									context.read<MyDataBloc>().add(FetchData());
								}, 
								child: Row(
									mainAxisAlignment: MainAxisAlignment.center,
									children: [
										Icon(Icons.refresh),
										SizedBox(width: 10),
										Text(
											'Réessayer',
											style: TextStyle(
												fontWeight: FontWeight.bold,
												fontSize: 18,
											),
										),
									],
								),
							),
						),
				  ],
				),
			),
		);
  }
}
