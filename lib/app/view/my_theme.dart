import 'package:flutter/material.dart';

class MyTheme with ChangeNotifier {
	static bool _isDark = true;

	ThemeMode currenTheme() {
		return _isDark ? ThemeMode.dark : ThemeMode.light;
	}

	void switchTheme() {
		_isDark = !_isDark;
		notifyListeners();
	}
}
