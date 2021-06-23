import 'package:flutter/material.dart';
import 'package:meu_site_flutter/breakpoint.dart';
import 'package:meu_site_flutter/pages/home/widgets/section/course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16,
          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index){
            return CourseItem();
          },
        );
      }
    );
  }
}