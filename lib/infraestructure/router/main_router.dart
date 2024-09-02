import 'package:flutter/material.dart';
import 'package:flutter_currency_convert/presentation/screens/index.dart';
import 'package:go_router/go_router.dart';

final mainRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomeScreen('Currency Converter')),
    GoRoute(
        path: '/currency_convert',
        builder: (BuildContext context, GoRouterState state) =>
            const CurrencyConvertScreen())
  ],
);
