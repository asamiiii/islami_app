import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../app_provider_st_mng/main_provider.dart';
import '../../app_theme/main_theme.dart';
import '../main_layout/widget.dart';

class QuranScreenDetailes extends StatelessWidget {
    String? title;
    int? index;
   QuranScreenDetailes({super.key,this.title,this.index});

  @override
  Widget build(BuildContext context) {
    var myProvider=Provider.of<MainProvider>(context);
     if(myProvider.ayat.isEmpty){
       myProvider.loadQuran(index!);
     }
     
    return Stack(
      children: [
         const MainBgImage(),
         Scaffold(
              appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              title:  Text(title!,style: Theme.of(context).textTheme.headline1,),
            ),
            backgroundColor: Colors.transparent,
            body: Container(
              margin: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius:BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                  )
              ),
              child: myProvider.ayat.isEmpty? const Center(child:  CircularProgressIndicator()):
               Container(
                  margin: const EdgeInsets.all(30),
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Center(child: Text(myProvider.ayat[index],style: Theme.of(context).textTheme.headline3,textDirection:TextDirection.rtl ));
                    },
                     separatorBuilder: (context, index) => const Divider(
                        endIndent: 2,
                        indent: 2,
                  color: goldColorMainColor,
                  thickness: 1,
                  ),
                   itemCount:myProvider.ayat.length ))
             
            
              ),
            ),
         
      ],
    );
  }
}