import 'package:flutter/material.dart';
import 'package:professione/helpers/reponsiveness.dart';
import 'package:professione/widgets/large_screen.dart';
import 'package:professione/widgets/small_screen.dart';
import 'package:professione/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, key),
      drawer: Drawer(),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: LargeScreen(),
        customScreen: SmallScreen(),
      ),
    );
  }
}
