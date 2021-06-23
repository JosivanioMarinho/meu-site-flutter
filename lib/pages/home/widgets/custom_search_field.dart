import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: Colors.white),
        ),
        hintText: 'Digite alguma coisa aqui',
        hintStyle: TextStyle(color: Colors.white),
        suffixIcon: IconButton(
          onPressed: (){}, 
          icon: Icon(
              Icons.search,),
              color: Colors.white,
          ),
      ),
    );
  }
}