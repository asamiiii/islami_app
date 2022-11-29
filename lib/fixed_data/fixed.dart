import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadeeth_screen/hadeeth.dart';
import 'package:islami_app/screens/quran_screen/quran_screen.dart';
import 'package:islami_app/screens/radio_screen/radio_screen.dart';
import 'package:islami_app/screens/sebha_screen/sebha_screen.dart';

List<Widget> screensList=const[
  RadioScreen(),
  SebhaScreen(),
  HadeethScreen(),
  QuranScreen()
];

List<BottomNavigationBarItem>bottomNavBarItemList=[
  BottomNavigationBarItem(icon: Image.asset('assets/images/radio_blue.png',height: 30,),label: 'Radio',backgroundColor:const Color(0xffB7935F) ),
              BottomNavigationBarItem(icon: Image.asset('assets/images/sebha_blue.png',height: 30),label: 'Sebha',backgroundColor:const Color(0xffB7935F)),
              BottomNavigationBarItem(icon: Image.asset('assets/images/Path 1.png',height: 30),label: 'Hadeath',backgroundColor:const Color(0xffB7935F)),
              BottomNavigationBarItem(icon: Image.asset('assets/images/moshaf_gold.png',height: 30,color: Colors.white,),label: 'Quran',backgroundColor:const Color(0xffB7935F)),
];


 List <String> suraNameList=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
            ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
            ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
            ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
            ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
            ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
            ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
            ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
            ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
            "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];