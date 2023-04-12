// ignore_for_file: prefer_const_constructors, sort_constructors_first, sort_child_properties_last

import 'package:cached_network_image/cached_network_image.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:teach_on_mars/l10n/l10n.dart';

class PicturePostDetailsScreen extends StatelessWidget {
	final DataModelPicture dataModelPicture;
  const PicturePostDetailsScreen({super.key, required this.dataModelPicture});

  @override
  Widget build(BuildContext context) {
		final l10n = context.l10n;

    return Scaffold(
			backgroundColor: Theme.of(context).colorScheme.primary,
			appBar: AppBar(
				elevation: 0,
				centerTitle: false,
				title: Text(
					l10n.pictureAppBarTitle,
					style: TextStyle(
						fontSize: 22
					),
				),
			),
			body: Column(
				children: [
					CachedNetworkImage(
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
							height: 279,
							decoration: BoxDecoration(
								image: DecorationImage(
									image: imageProvider,
									fit: BoxFit.cover,
								),
							),
						),
					),
					Padding(
						padding: EdgeInsets.fromLTRB(16, 16, 16, 5),
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
					Text(
						dataModelPicture.author,
						style: TextStyle(
							fontSize: 14,
								fontWeight: FontWeight.w400,
								height: 1.42,
								color: Theme.of(context).colorScheme.secondary,
								letterSpacing: 0.25,
						),
					),
				],
			),
		);
  }
}
