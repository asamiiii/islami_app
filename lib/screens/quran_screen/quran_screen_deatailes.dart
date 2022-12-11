import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../app_provider_st_mng/main_provider.dart';
import '../../app_theme/light_theme.dart';
import '../main_layout/widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class QuranScreenDetailes extends StatelessWidget {
    final String? title;
    final int? index;

   const QuranScreenDetailes({super.key,this.title,this.index});




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
              margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius:BorderRadius.only(
                  topLeft: Radius.circular(50),
                  //topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                  )
              ),
              child: myProvider.ayat.isEmpty? 
              const Center(child:  CircularProgressIndicator()):
               Container(
                  margin: const EdgeInsets.all(30),
                  child: ScrollablePositionedList.separated(
                    initialScrollIndex: myProvider.isFlaged()! ? myProvider.selectedAyaIndex:0 ,
                    itemScrollController: myProvider.itemScrollController,
                    itemPositionsListener: myProvider.itemPositionsListener,
                    itemBuilder: (context, index) {
                      return 
                          SizedBox(
                            child: Row(
                              textDirection: TextDirection.ltr,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Stack(
                                  children: [
                                    Positioned(
                                      //left: 10,
                                      child: myProvider.darkMode! ? Image.asset('assets/images/star.png',height: 40,width: 40,):Image.asset('assets/images/star_dark.png',height: 40,width: 40,)),
                                    Positioned(
                                      width: 40,
                                      height: 40,
                                      //top:7,
                                      child: Center(child: Text(myProvider.replaceArabicNumber((index+1).toString(),),
                                      style: Theme.of(context).textTheme.headline6,)))
                                  ],
                                ),
                                Expanded(
                                  child: InkWell(
                                    onLongPress: () {
                                     myProvider.addFlag(index,this.index!);
                                     //print(myProvider.selectedAya);
                                    },
                                    child: Text(myProvider.ayat[index],
                                      style: Theme.of(context).textTheme.headline3,
                                      textDirection:TextDirection.rtl,textAlign: TextAlign.center, ),
                                  ),
                                ),
                                myProvider.selectedAya==myProvider.ayat[index]?
                                 Image.asset('assets/images/flag.png',height:40,width:40 ,):
                                 Container()
                                  
                              ],
                            ),
                          );
                      
                         
                        
                    },
                    itemCount:myProvider.ayat.length ,
                     separatorBuilder: (context, index) {
                      return    const Divider(
                        color: goldColorMainColor,
                        thickness: 0.5,
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

