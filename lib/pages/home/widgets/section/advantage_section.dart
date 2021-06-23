import 'package:flutter/material.dart';

class AdvantageSection extends StatelessWidget {
  const AdvantageSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget buildAdvantage(String title, String subtitle) {
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
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      );
    }

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
          buildAdvantage(
            '+45.000 alunos', 'Didática garantida'
          ),
          buildAdvantage(
            '+45.000 alunos', 'Didática garantida'
          ),
          buildAdvantage(
            '+45.000 alunos', 'Didática garantida'
          ),
        ],
      ),
    );
  }
}