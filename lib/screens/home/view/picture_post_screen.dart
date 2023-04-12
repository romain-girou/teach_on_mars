// ignore_for_file: sort_constructors_first, prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';

class PicturePostScreen extends StatelessWidget {
	final DataModelPicture dataModelPicture;
  const PicturePostScreen({super.key, required this.dataModelPicture});

  @override
  Widget build(BuildContext context) {
    return Container(
			height: 328,
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
							dataModelPicture.title,
							style: TextStyle(
								fontSize: 18,
								height: 1.33,
								letterSpacing: 0.15,
								fontWeight: FontWeight.w500,
							),
						),
					),
					Expanded(
						child: Padding(
							padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
							child: CachedNetworkImage(
								imageUrl: dataModelPicture.picture['url'] as String,
								placeholder: (context, url) => Center(
									child: SizedBox(
										width: 30,
										height: 30,
										child: CircularProgressIndicator(),
									),
								),
								errorWidget: (context, url, error) => Icon(Icons.error),
								imageBuilder: (context, imageProvider) => Container(
									width: MediaQuery.of(context).size.width,
									decoration: BoxDecoration(
										borderRadius: BorderRadius.circular(8),
										image: DecorationImage(
											image: imageProvider,
											fit: BoxFit.cover,
										),
									),
								),
							),
						),
					),
					Padding(
						padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
						child: Center(
							child: Text(
								dataModelPicture.author,
								style: TextStyle(
									fontSize: 14,
									fontWeight: FontWeight.w400,
									height: 1.42,
									color: Theme.of(context).colorScheme.secondary,
								),
							),
						),
					),
				],
			),
		);
  }
}
