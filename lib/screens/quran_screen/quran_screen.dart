import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islami_app/main.dart';
import 'package:islami_app/screens/quran_screen/quran_screen_deatailes.dart';
import 'package:islami_app/screens/quran_screen/widgets.dart';
import 'package:provider/provider.dart';

import '../../app_provider_st_mng/main_provider.dart';
import '../../app_theme/main_theme.dart';
import '../../fixed_data/fixed.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
  var myProvider=Provider.of<MainProvider>(context);

      
    return  Stack(
      children: [
        const QuranTopCenterImage(),
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
                     Text('Sura Name',style: Theme.of(context).textTheme.headline2,)
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
                      return InkWell(
                        onTap: () {
                           if(myProvider.ayat.isNotEmpty){
                             myProvider.ayat.clear();
                                  }
                          Navigator.of(context).push(
                            MaterialPageRoute(builder:(context) =>
                             QuranScreenDetailes(
                              title:suraNameList[index],
                              index: index+1, ),));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(suraNameList[index],style: Theme.of(context).textTheme.headline3,),
                          ],
                        ),
                      );
                    }, itemCount: suraNameList.length,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}