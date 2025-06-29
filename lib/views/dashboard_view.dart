import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
        SizeConfig.init(context);

    return MaterialApp(
      home: 
       Scaffold(
        body: AdaptiveLayoutWidget(
          mobileLayout: (context) => SizedBox(),
          tabletLayout:  (context) => SizedBox(),
          desktopLayout: (context) => DashboardDesktopLayout(),
        ),
      ),
    );
  }
}
