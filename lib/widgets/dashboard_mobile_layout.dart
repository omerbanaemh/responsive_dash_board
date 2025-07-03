import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess/all_expensess.dart';
import 'package:responsive_dash_board/widgets/income/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card/my_cards_and_transction_history_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoice.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 8,),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensess(),
                SizedBox(height: 24),
                QuickInvoice(),
                SizedBox(height: 24),
                MyCardsAndTransctionHistorySection(),
                SizedBox(height: 24),
                IncomeSection(),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
        SizedBox(width: 8,),
      ],
    );
  }
}
