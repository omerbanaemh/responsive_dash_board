import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess/all_expensess.dart';
import 'package:responsive_dash_board/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card/my_cards_and_transction_history_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 3, child: CustomDrawer()),
        SizedBox(width: 32),

        Expanded(
          flex: 12,
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 7,
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      AllExpensess(),
                      SizedBox(height: 24),
                      QuickInvoice(),
                      SizedBox(height: 24),
                    ],
                  ),
                ),
                SizedBox(width: 24),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      MyCardsAndTransctionHistorySection(),
                      SizedBox(height: 24),
                      IncomeSection(),
                    ],
                  ),
                ),
                SizedBox(width: 32),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
