import 'package:flutter/material.dart';
import 'package:islami_app/app_theme/main_theme.dart';
import 'package:islami_app/screens/sebha_screen/widgets.dart';


class SebhaScreen extends StatelessWidget {
  const SebhaScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const SebhaTopCenterImage(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const SebhaCounterBox(),
             const TasbbehBox(),
             const SizedBox(height: 10,),
             Container(
              margin: const EdgeInsets.only(right: 20,top: 20),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   InkWell(
                    onTap: () {
                      showBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        height: MediaQuery.of(context).size.height*0.40,
                       color: goldColorMainColor,
                       child: SingleChildScrollView(
                         child: Column(
                          
                          children: [
                            const TextField(
                          decoration: InputDecoration(
                          hintText: 'Add Zwkr',
                          hintStyle:
                           TextStyle(color: Colors.white)),
                         style:  TextStyle(
                           fontSize: 20,
                          color: Colors.white,
                             ),),
                                
                                Container(
                               width: 300,
                               height: 50,
                               color: const Color.fromARGB(255, 78, 104, 161),
                               child: TextButton(
                               onPressed: (){},
                               child: const Text(
                                   'Login',
                                     style: TextStyle(color: Color.fromARGB(255, 171, 186, 224)),
          )))
                             
                          ],
                         ),
                       ),
                ));
                    },
                     child: Container(
                      decoration: const BoxDecoration(
                        color: goldColorMainColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                          )
                      ),
                      width: 100,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                           Text('Add Zekr'),
                           Icon(Icons.add),
                        ],
                      ),
                      ),
                   ),
                 ],
               ),
             )
          ],
        )

      ],
    );
  }
}