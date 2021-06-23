import 'package:flutter/material.dart';
import 'package:meu_site_flutter/pages/home/widgets/app_bar/web_responsive_app_bar_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text('Flutter'),
          const SizedBox( width: 32,),
          WebResponsiveAppBarContent(),
          const SizedBox( width: 12,),
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.shopping_cart)
          ),
          const SizedBox( width: 24,),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              child: Text('Fazer login'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                side: MaterialStateProperty.all<BorderSide>(BorderSide(width: 1.5, color: Colors.white)),
              ),
              onPressed: (){},
            ),
          ),
          const SizedBox( width: 12,),
          SizedBox(
            height: 39.5,
            child: ElevatedButton(
              onPressed: (){}, 
              child: Text('Cadastre-se'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            ),
          ),
        ]
      ),
    );
  }
}