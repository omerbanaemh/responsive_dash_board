import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/latest_transction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           QuickInvoiceHeader(),
           LatestTransction(),
      
          // AllExpensessItemsListView(),
        ],
      ),
      );
  }
}