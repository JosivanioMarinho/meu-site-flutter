import 'package:flutter/material.dart';
import 'package:meu_site_flutter/breakpoint.dart';
import 'package:meu_site_flutter/pages/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        final maxWidth = constraints.maxWidth;
        
        if(maxWidth >= 1000){
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.2,
                  child: Image.asset('images/pexels-photo-892757.webp',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 450,
                      child: Column(
                        children: [
                          Text(
                            'Aprendendo responsividade',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8,),
                          Text(
                            'Com estes conheciemtos poderei criar sites responsivos para qualquer plataforma, usando Flutter',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 12,),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        if(maxWidth >= mobileBreakpoint){
          return SizedBox(
            height: 260,
            child: Stack(
              children: [
                SizedBox(
                  height: 210,
                  width: double.infinity,
                  child: Image.asset(
                    'images/pexels-photo-892757.webp',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Card(
                    color: Colors.black,
                    elevation: 4,
                    shadowColor: Colors.grey,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 350,
                      child: Column(
                        children: [
                          Text(
                            'Aprendendo responsividade',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8,),
                          Text(
                            'Com estes conhecimentos poderei criar sites responsivos para qualquer plataforma, usando Flutter',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 12,),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.2,
              child: Image.network(
                'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aprendendo responsividade',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    'Com estes conhecimentos poderei criar sites responsivos para qualquer plataforma, usando Flutter',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12,),
                  CustomSearchField(),
                ],
              ),
            ),
          ],
        );
      }
    );
  }
}