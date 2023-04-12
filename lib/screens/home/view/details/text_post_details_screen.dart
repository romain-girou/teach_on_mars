// ignore_for_file: prefer_const_constructors, sort_constructors_first

import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';

class TextPostDetailsScreen extends StatelessWidget {
	final DataModelPost dataModelPost;
  const TextPostDetailsScreen({super.key, required this.dataModelPost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			backgroundColor: Theme.of(context).colorScheme.primary,
			appBar: AppBar(
				elevation: 0,
				centerTitle: false,
				title: Text(
					'Article',
					style: TextStyle(
						fontSize: 22,
					),
				),
			),
			body: SingleChildScrollView(
				child: Padding(
					padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								dataModelPost.title,
								style: TextStyle(
									fontSize: 18,
									height: 1.33,
									letterSpacing: 0.15,
									fontWeight: FontWeight.w500,
								),
							),
							SizedBox(height: 10),
							Text(
								dataModelPost.text,
								style: TextStyle(
									fontSize: 16,
										fontWeight: FontWeight.w400,
										height: 1.375,
										color: Theme.of(context).colorScheme.secondary,
										letterSpacing: 0.5,
								),
							),
						],
					),
				),
			),
		);
  }
}
