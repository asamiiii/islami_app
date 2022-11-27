import 'package:flutter/material.dart';

import 'fixed_data/fixed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
     static const Color goldColorMainColor= Color(0xffB7935F);
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       // bottomNavigationBarTheme: BottomNavigationBarTheme(: ,),
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


  @override
  Widget build(BuildContext context) {
   int currentIndexx = 1;
   changeIndex(int index){
    currentIndexx=index;
    print(currentIndexx);
   }
    return Scaffold(
      appBar: AppBar(
      
        title: const Text('master branch'),
      ),
      body: screensList[currentIndexx],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: currentIndexx,
        onTap: ((value) {
          print(value);
          setState(() {
            changeIndex(value);
          });
          } ),
          
        backgroundColor: MyApp.goldColorMainColor,
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/images/radio_blue.png'),label: '',backgroundColor:const Color(0xffB7935F) ),
          BottomNavigationBarItem(icon: Image.asset('assets/images/sebha_blue.png'),label: '',backgroundColor:const Color(0xffB7935F)),
          BottomNavigationBarItem(icon: Image.asset('assets/images/Path 1.png'),label: '',backgroundColor:const Color(0xffB7935F)),
          BottomNavigationBarItem(icon: Image.asset('assets/images/moshaf_gold.png'),label: '',backgroundColor:const Color(0xffB7935F)),
          ],
      ),

    );
  }
}
