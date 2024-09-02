import 'package:flutter/material.dart';
import 'package:flutter_currency_convert/infraestructure/router/main_router.dart';
import 'package:flutter_currency_convert/presentation/common/theme.dart';
import 'package:flutter_currency_convert/presentation/screens/home/home_screen.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  static const String titleApp= 'Currency Converter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: mainRouter,
      theme: appTheme,
      darkTheme: appDarkTheme,
    );
  }
}
