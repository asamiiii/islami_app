import 'package:flutter/material.dart';
import 'package:islami_app/app_provider_st_mng/main_provider.dart';
import 'package:islami_app/app_theme/main_theme.dart';
import 'package:islami_app/screens/hadeeth_screen/hadeeth_detailes.dart';
import 'package:islami_app/screens/main_layout/widget.dart';
import 'package:provider/provider.dart';
import 'fixed_data/fixed.dart';

void main() {
  runApp(const MyApp());

  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainProvider()),
      ],
      child: const MyApp(),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => MainProvider(),
      child:Consumer<MainProvider> (
        builder: (context, value, child) => MaterialApp(
        routes:{
          HadeeathDetailesScreen.routName:(context) =>  HadeeathDetailesScreen()},
        debugShowCheckedModeBanner: false,
        theme: mainTheme(),
        home: const MyHomePage(),
      ),)
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key,});


  @override
  Widget build(BuildContext context) {
   
  var myProvider=Provider.of<MainProvider>(context);
  if(myProvider.ahadeethList.isEmpty){
        myProvider.loadAhadeeth();
  }
  
    return Stack(
        children: [
          const MainBgImage(),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              title:  Text('Islami',style: Theme.of(context).textTheme.headline1,),
            ),
            body: screensList[myProvider.currentIndexx],
            bottomNavigationBar:const BottomNavBar() ,
    
          ),
        ],
      );
  }
}
