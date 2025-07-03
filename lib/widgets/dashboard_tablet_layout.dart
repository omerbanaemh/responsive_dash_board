import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess/all_expensess.dart';
import 'package:responsive_dash_board/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card/my_cards_and_transction_history_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoice.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 3, child: CustomDrawer()),
        SizedBox(width: 32),

        Expanded(
          flex: 8,
          child: SingleChildScrollView(
            child: Column(
        children: [
          Column(
            children: [
              SizedBox(height: 40),
              AllExpensess(),
              SizedBox(height: 24),
              QuickInvoice(),
            ],
          ),
          SizedBox(width: 24),
          Column(
            children: [
              SizedBox(height: 40),
              MyCardsAndTransctionHistorySection(),
              SizedBox(height: 24),
              IncomeSection(),
            ],
          ),
          SizedBox(height: 32),
        ],
      ),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
