import 'package:flutter/material.dart';

import '../main_layout/widget.dart';

class HadeeathDetailesScreen extends StatelessWidget {
  
    final String? title;
    final String? body;
    const HadeeathDetailesScreen({super.key,this.title,this.body});

  static String routName='ahadeethDetailes';

  @override
  Widget build(BuildContext context) {
     // var myProvider=Provider.of<MainProvider>(context);
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
              child: Container(
                  margin: const EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(body!,style: Theme.of(context).textTheme.headline3,textDirection:TextDirection.rtl ),
                      ],
                    ),
                  ))
             
            
              ),
            ),
         
      ],
    );
  }
}