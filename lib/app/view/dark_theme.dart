// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
	colorScheme: ColorScheme.dark(
		background: Color.fromRGBO(6, 6, 6, 1),
		onBackground: Colors.white,
		primary: Colors.black,
		onPrimary: Colors.white,
		secondary: Color(0xFF909094),
		onSecondary: Colors.white,
		error: Colors.red,
	),
);