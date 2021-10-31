import 'package:ecomm/grocery/screen/GrocerySplash.dart';
import 'package:ecomm/main/store/AppStore.dart';
import 'package:ecomm/main/utils/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

AppStore appStore = AppStore();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GrocerySplashScreen(),
        theme: !appStore.isDarkModeOn
            ? AppThemeData.lightTheme
            : AppThemeData.darkTheme,
      ),
    );
  }
}
