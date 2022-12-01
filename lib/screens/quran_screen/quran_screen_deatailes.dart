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
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
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
                      return 
                          SizedBox(
                            //width: MediaQuery.of(context).size.width*0.02,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Stack(
                                  
                                  children: [
                                    Positioned(
                                      //left: 10,
                                      child: Image.asset('assets/images/star.png',height: 40,width: 40,)),
                                    Positioned(
                                      width: 40,
                                      height: 40,
                                      //top:7,
                                      child: Center(child: Text(myProvider.replaceArabicNumber((index+1).toString()),
                                      style: const TextStyle(
                                        fontSize: 9,
                                        color: Colors.brown,
                                        fontWeight: FontWeight.bold
                                        ),)))
                                  ],
                                ),
                                Expanded(
                                  child: Text('${myProvider.ayat[index]} ',
                                    style: Theme.of(context).textTheme.headline3,
                                    textDirection:TextDirection.rtl,textAlign: TextAlign.center, ),
                                ),
                                
                              ],
                            ),
                          );
                      
                         
                        
                    },
                    itemCount:myProvider.ayat.length ,
                     separatorBuilder: (context, index) {
                      return    const Divider(
                        color: goldColorMainColor,
                        thickness: 2,
                        indent: 10,
                        endIndent: 10,
                      );
                     }
                   ))
             
            
              ),
            ),
         
      ],
    );
  }
}