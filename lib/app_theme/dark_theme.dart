import 'package:flutter/material.dart';

import 'light_theme.dart';

ThemeData darkThemeMode()=> ThemeData(
        textTheme:   const TextTheme(
          headline1: TextStyle(fontSize: 25,color: yellowDark,fontWeight: FontWeight.bold,),
          headline2: TextStyle(fontSize: 20,color: yellowDark,fontWeight: FontWeight.bold,),
          headline3: TextStyle(fontSize: 15,color: yellowDark,fontWeight: FontWeight.bold,),
          headline6: TextStyle(
            fontSize: 9,
            color: yellowDark,
            fontWeight: FontWeight.bold
          ),

          ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          unselectedIconTheme:IconThemeData(
              color: Colors.black
            ) ,
            selectedIconTheme:IconThemeData(
              color: Colors.yellowAccent
            ) ,
            unselectedLabelStyle: TextStyle(color: Colors.white),
            selectedLabelStyle: TextStyle(color: Colors.yellowAccent),
            showUnselectedLabels: false,
            selectedItemColor: yellowDark,
            unselectedItemColor: Colors.black,
        )
      );