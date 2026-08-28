import 'package:flutter/material.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const DownMamaApp());
}

class DownMamaApp extends StatelessWidget {
  const DownMamaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DownMama',
      theme: AppTheme.darkTheme,
      home: const Scaffold(
        body: Center(
          child: Text(
            'DownMama',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: AppColors.cyan,
            ),
          ),
        ),
      ),
    );
  }
}