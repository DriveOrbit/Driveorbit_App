import 'package:dashboard_ui/screens/vehicle_dasboard/map_page.dart';
import 'package:flutter/material.dart';
import 'package:driveorbit_app/screens/vehicle_dashboard/map_page.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard UI',
      theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
         useMaterial3:true,
      ),
      home: MapPage(),
    );// 
  }
}