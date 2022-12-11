import 'package:flutter/material.dart';



     const Color goldColorMainColor= Color(0xffB7935F);
     const Color blackColorMainColor= Colors.black;
     const Color whiteColorMainColor= Colors.white;
     const Color yellowDark=Color(0xFFFACC1D);
     const Color bottomNavColor=Color(0xFF141A2E);

ThemeData mainTheme()=> ThemeData(
        textTheme:   const TextTheme(
          headline1: TextStyle(fontSize: 25,color: blackColorMainColor,fontWeight: FontWeight.bold,),
          headline2: TextStyle(fontSize: 20,color: blackColorMainColor,fontWeight: FontWeight.bold,),
          headline3: TextStyle(fontSize: 15,color: blackColorMainColor,fontWeight: FontWeight.bold,),
          headline6: TextStyle(
            fontSize: 9,
            color: blackColorMainColor,
            fontWeight: FontWeight.bold
          ),
          ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          unselectedIconTheme:IconThemeData(
              color: Colors.white
            ) ,
            selectedIconTheme:IconThemeData(
              color: Colors.black,
               
            ) ,
            unselectedLabelStyle: TextStyle(color: Colors.white),
            selectedLabelStyle: TextStyle(color: Colors.white),
            showUnselectedLabels: false,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
        )
      );

      
  
