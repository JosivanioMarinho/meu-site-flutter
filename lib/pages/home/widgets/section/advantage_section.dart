import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:meu_site_flutter/breakpoint.dart';

class AdvantageSection extends StatelessWidget {
  const AdvantageSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget horizontalBuildAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          SizedBox(width: 8,),
          Column(
            children: [
              AutoSizeText(
                title,
                minFontSize: 10,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              AutoSizeText(
                subtitle,
                minFontSize: 10,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      );
    }

    Widget verticalBuildAdvantage(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          SizedBox(width: 8,),
          AutoSizeText(
            title,
            minFontSize: 10,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          AutoSizeText(
            subtitle,
            minFontSize: 5,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ],
      );
    }

    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth >= mobileBreakpoint){
          return Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16,
              spacing: 8,
              children: [
                horizontalBuildAdvantage(
                 'Android', 'Desenvolvimento'
                ),
                horizontalBuildAdvantage(
                  'Ios', 'Desenvolvimento'
                ),
                horizontalBuildAdvantage(
                  'Web', 'Desenvolvimento'
                ),
              ],
            ),
          );
        }
        return Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: verticalBuildAdvantage(
                    'Android', 'Desenvolvimento'
                  ),
                ),
                const SizedBox(width: 4,),
                Expanded(
                  child: verticalBuildAdvantage(
                    'Ios', 'Desenvolvimento'
                  ),
                ),
                const SizedBox(width: 4,),
                Expanded(
                  child: verticalBuildAdvantage(
                    'Web', 'Desenvolvimento'
                  ),
                ),
              ],
            ),
          );
      }
    );
  }
}