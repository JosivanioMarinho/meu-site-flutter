import 'package:flutter/material.dart';

class WebResponsiveAppBarContent extends StatelessWidget {
  const WebResponsiveAppBarContent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraint){
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 4,),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.search),
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Digite sua pesquisa aqui',
                            isCollapsed: true,
                          ),
                        )
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12,),
              if(constraint.maxWidth >= 400)...[
                SizedBox(width: 12,),
                TextButton(
                  onPressed: (){}, 
                  child: Text('Aprender'),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
              ],
              if(constraint.maxWidth >= 500)...[
                SizedBox(width: 12,),
                TextButton(
                  onPressed: (){}, 
                  child: Text('Flutter'),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
              ]
            ],
          );
        }
      ),
    );
  }
}