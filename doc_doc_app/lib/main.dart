import 'package:doc_doc_app/core/style/app_themes.dart';
import 'package:doc_doc_app/features/splash/ui/splash_screen.dart';
import 'package:flutter/material.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
  theme: AppThemes.lightTheme,
    
      
    );
  }
}


void main (){

  runApp(DocDocApp());
}