import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islami_app/screens/hadeeth_screen/widgets.dart';

import '../../app_theme/main_theme.dart';
import '../../fixed_data/fixed.dart';

class HadeethScreen extends StatelessWidget {
  const HadeethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         const HadeethTopCenterImage(),
         Container(
          margin: const EdgeInsets.only(top: 230),
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.5,
          child: Column(
              children: [
                const Divider(
                  color: goldColorMainColor,
                  thickness: 1,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                     Text('Ahadeeth',style: Theme.of(context).textTheme.headline2,)
                  ],
                ),
                            const Divider(
                  color: goldColorMainColor,
                  thickness: 1,
                  ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider(
                        endIndent: 50,
                        indent: 50,
                  color: goldColorMainColor,
                  thickness: 1,
                  );
                    },
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(suraNameList[index],style: Theme.of(context).textTheme.headline3,),
                        ],
                      );
                    }, itemCount: suraNameList.length,
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}