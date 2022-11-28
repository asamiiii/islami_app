import 'package:flutter/material.dart';

import 'fixed_data/fixed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
     static const Color goldColorMainColor= Color(0xffB7935F);
     static const Color blackColorMainColor= Colors.black;
     static const Color whiteColorMainColor= Colors.white;
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 25,color: blackColorMainColor,fontWeight: FontWeight.bold,),
          headline2: TextStyle(fontSize: 20,color: blackColorMainColor,fontWeight: FontWeight.bold,),
          headline3: TextStyle(fontSize: 15,color: blackColorMainColor,fontWeight: FontWeight.bold,)
          ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndexx = 3;
   void changeIndex(int index){
    setState(() {
      currentIndexx=index;
    });     
   }

  @override
  Widget build(BuildContext context) {
   

    return Stack(
      children: [
        Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/bg3.png'),
          fit: BoxFit.fill,
        ),
        //shape: BoxShape.circle,
      ),
    ),
 
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(70),
              width: 205,
              height: 227,
                decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/center_main_image.png',),
                  fit: BoxFit.fill,
                ),
                //shape: BoxShape.circle,
              ),
            ),
        ],
      ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title:  Text('Islami',style: Theme.of(context).textTheme.headline1,),
          ),
          body: screensList[currentIndexx],
          bottomNavigationBar: BottomNavigationBar(
            unselectedIconTheme:const IconThemeData(
              color: Colors.white
            ) ,
            selectedIconTheme:const IconThemeData(
              color: Colors.black
            ) ,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            selectedLabelStyle: const TextStyle(color: Colors.white),
            showUnselectedLabels: true,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            currentIndex: currentIndexx,
            onTap: changeIndex,
            
            backgroundColor: MyApp.goldColorMainColor,
            items: [
              BottomNavigationBarItem(icon: Image.asset('assets/images/radio_blue.png',height: 30,),label: 'Radio',backgroundColor:const Color(0xffB7935F) ),
              BottomNavigationBarItem(icon: Image.asset('assets/images/sebha_blue.png',height: 30),label: 'Sebha',backgroundColor:const Color(0xffB7935F)),
              BottomNavigationBarItem(icon: Image.asset('assets/images/Path 1.png',height: 30),label: 'Hadeath',backgroundColor:const Color(0xffB7935F)),
              BottomNavigationBarItem(icon: Image.asset('assets/images/moshaf_gold.png',height: 30,color: Colors.white,),label: 'Quran',backgroundColor:const Color(0xffB7935F)),
              ],
          ),

        ),
      ],
    );
  }
}
