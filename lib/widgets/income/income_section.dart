import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income/income_section_body.dart';
import 'package:responsive_dash_board/widgets/income/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        IncomeSectionHeader(),
        IncomSectionBody(),
         ],
    ));
  }
}
