import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess/all_expensess.dart';
import 'package:responsive_dash_board/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 32),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                AllExpensess(),
                SizedBox(height: 24),
                QuickInvoice(),
                  ],
            ),
          ),
        ],
      ),
    );
  }
}
