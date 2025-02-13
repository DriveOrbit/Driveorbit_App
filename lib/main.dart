import 'package:flutter/material.dart';
import 'screens/auth/login_page.dart';
import 'screens/auth/forgot_password_page.dart';
import 'screens/auth/otp_page.dart';
import 'screens/dashboard/dashboard_driver_page.dart';
import 'app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DriveOrbit',
      theme: darkTheme,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/forgot-password': (context) => const ForgotPasswordPage(),
        '/otp': (context) => const OtpPage(),
        '/dashboard': (context) => const DashboardDriverPage(),
      },
    );
  }
}
