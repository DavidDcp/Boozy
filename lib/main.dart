import 'package:boozy/config/router/app_router.dart';
import 'package:boozy/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() => runApp(
  const ProviderScope(
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
