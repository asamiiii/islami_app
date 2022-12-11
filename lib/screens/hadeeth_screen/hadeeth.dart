import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadeeth_screen/widgets.dart';
import 'package:provider/provider.dart';
import '../../app_provider_st_mng/main_provider.dart';
import '../../app_theme/light_theme.dart';
import 'hadeeth_detailes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadeethScreen extends StatelessWidget {
  const HadeethScreen({super.key});

  @override
  Widget build(BuildContext context) {
      var myProvider=Provider.of<MainProvider>(context);
      
    return Stack(
      children: [
         const HadeethTopCenterImage(),
         Container(
          margin: const EdgeInsets.only(top: 180),
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.8,
          child: myProvider.ahadeethList.isEmpty?const Center(child: CircularProgressIndicator()):
           Column(
              children: [
                const Divider(
                  color: goldColorMainColor,
                  thickness: 1,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                     Text(AppLocalizations.of(context).hadeeth,style: Theme.of(context).textTheme.headline2,)
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
                          Navigator.of(context).push(MaterialPageRoute(builder:(context) => HadeeathDetailesScreen(title:myProvider.hadeethTitle[index],body: myProvider.ahadeethList[index], ),));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(myProvider.hadeethTitle[index],style: Theme.of(context).textTheme.headline3,),
                          ],
                        ),
                      );
                    }, itemCount: myProvider.ahadeethList.length,
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}


/*class HadeethModel{
  String title;
  List<String> body;

  HadeethModel(this.title,this.body);
  
}*/