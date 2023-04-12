// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
			width: MediaQuery.of(context).size.width,
			height: MediaQuery.of(context).size.height,
			child: Center(
				child: CircularProgressIndicator(
					color: Color(0xFF2E66D4),
				),
			),
		);
  }
}
