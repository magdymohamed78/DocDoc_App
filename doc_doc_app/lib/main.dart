import 'package:doc_doc_app/core/router/app_route.dart';
import 'package:doc_doc_app/core/router/routes.dart';
import 'package:doc_doc_app/core/style/app_themes.dart';
import 'package:flutter/material.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,

      onGenerateRoute: AppRoute().onGenerateRoute,
      initialRoute: Routes.splash,
    );
  }
}

void main() {
  runApp(DocDocApp());
}
