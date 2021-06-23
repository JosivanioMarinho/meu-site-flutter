import 'package:flutter/material.dart';
import 'package:meu_site_flutter/breakpoint.dart';
import 'package:meu_site_flutter/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:meu_site_flutter/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:meu_site_flutter/pages/home/widgets/section/advantage_section.dart';
import 'package:meu_site_flutter/pages/home/widgets/section/courses_section.dart';
import 'package:meu_site_flutter/pages/home/widgets/section/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint){
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraint.maxWidth < mobileBreakpoint
            ? PreferredSize(
              child: MobileAppBar(), 
              preferredSize: Size(double.infinity, 56)
            )
            : PreferredSize(
              child: WebAppBar(), 
              preferredSize: Size(double.infinity, 72)
            ),
          drawer: constraint.maxWidth < mobileBreakpoint
          ? Drawer()
          : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1200),
              child: ListView(
                children: [
                  TopSection(),
                  AdvantageSection(),
                  CoursesSection(),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}