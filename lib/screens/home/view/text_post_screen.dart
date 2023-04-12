// ignore_for_file: sort_constructors_first, prefer_const_constructors

import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:teach_on_mars/screens/home/view/details/text_post_details_screen.dart';

class TextPostScreen extends StatelessWidget {
	final DataModelPost dataModelPost;
  const TextPostScreen({super.key, required this.dataModelPost});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
			decoration: BoxDecoration(
				color: Theme.of(context).colorScheme.primary,
				borderRadius: BorderRadius.circular(8),
			),
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					Padding(
						padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
						child: Text(
							dataModelPost.title,
							style: TextStyle(
								fontSize: 18,
								height: 1.33,
								letterSpacing: 0.15,
								fontWeight: FontWeight.w500,
							),
						),
					),
					Padding(
						padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
						child: Center(
							child: Text(
								dataModelPost.excerpt,
								style: TextStyle(
									fontSize: 14,
									height: 1.42,
									letterSpacing: 0.25,
									fontWeight: FontWeight.w400,
									color: Theme.of(context).colorScheme.secondary,
								),
							),
						),
					),
					Padding(
						padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
						child: SizedBox(
							width: double.infinity,
							child: TextButton(
								style: TextButton.styleFrom(
									backgroundColor: Color(0xFF2E66D4), 
									shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
								),
								onPressed: () {
									Navigator.push(
										context, 
										MaterialPageRoute<void>(
											builder: (context) => TextPostDetailsScreen(dataModelPost: dataModelPost),
										),
									);
								}, 
								child: Padding(
									padding: EdgeInsets.symmetric(vertical: 10),
									child: Text(
										'En savoir plus',
										style: TextStyle(
											fontSize: 14,
											height: 1.42,
											letterSpacing: 0.1,
											fontWeight: FontWeight.w500,
											color: Colors.white,
										),
									),
								),
							),
						),
					)
				],
			),
		);
  }
}
