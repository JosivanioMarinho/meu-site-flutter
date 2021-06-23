import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4,),
        Flexible(
          child: AutoSizeText(
            'Criação de aplocações Android, Ios e Web com Flutter',
            minFontSize: 3,
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