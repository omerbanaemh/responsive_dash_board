import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dashboard_view.dart';


void main(){
  runApp(ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardView());
  }
}