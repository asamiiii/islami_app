import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../main.dart';


    // This widget is the root of your application.
     const Color goldColorMainColor= Color(0xffB7935F);
     const Color blackColorMainColor= Colors.black;
     const Color whiteColorMainColor= Colors.white;

ThemeData mainTheme()=> ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 25,color: blackColorMainColor,fontWeight: FontWeight.bold,),
          headline2: TextStyle(fontSize: 20,color: blackColorMainColor,fontWeight: FontWeight.bold,),
          headline3: TextStyle(fontSize: 15,color: blackColorMainColor,fontWeight: FontWeight.bold,)
          ),
        primarySwatch: Colors.blue,
      );
  
