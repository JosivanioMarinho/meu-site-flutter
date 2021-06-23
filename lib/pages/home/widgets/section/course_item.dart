import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'images/pexels-photo-892757.webp',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4,),
        Flexible(
          child: AutoSizeText(
            'Criação de aplicações Android, Ios e Web com Flutter',
            minFontSize: 5,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        Text(
          'josivânio Marinho',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          'R\$22.90',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ]
    );
  }
}