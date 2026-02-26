import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config/theme/app_colors.dart';
import 'features/auth/presentation/pages/auth_page.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const FocusProApp());
}

class FocusProApp extends StatelessWidget {
  const FocusProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus Pro',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          surface: AppColors.surface,
        ),
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: const AuthPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}