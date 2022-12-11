import 'package:flutter/material.dart';
import 'package:islami_app/app_provider_st_mng/main_provider.dart';
import 'package:provider/provider.dart';
import '../../app_theme/light_theme.dart';


class MainBgImage extends StatelessWidget {
  const MainBgImage({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider=Provider.of<MainProvider>(context);
    return Container(
          
          decoration:  BoxDecoration(
          image: DecorationImage(
            image: myProvider.darkMode! ? const AssetImage(
                'assets/images/bg3.png'):const AssetImage(
                'assets/images/bg.png'),
            fit: BoxFit.fill,
          ),
          //shape: BoxShape.circle,
        ),
      );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

 

  @override
  Widget build(BuildContext context) {
      var myProvider=Provider.of<MainProvider>(context);


List<BottomNavigationBarItem>bottomNavBarItemList=[
              BottomNavigationBarItem(icon: Image.asset('assets/images/radio_blue.png',height: 30, color:myProvider.changeIconColor(0)),label: 'Radio',backgroundColor:myProvider.darkMode !? goldColorMainColor:bottomNavColor),
              BottomNavigationBarItem(icon: Image.asset('assets/images/sebha_blue.png',height: 30,color:myProvider.changeIconColor(1)),label: 'Sebha',backgroundColor:myProvider.darkMode !? goldColorMainColor:bottomNavColor),
              BottomNavigationBarItem(icon: Image.asset('assets/images/Path 1.png',height: 30,color:myProvider.changeIconColor(2)),label: 'Hadeath',backgroundColor:myProvider.darkMode !? goldColorMainColor:bottomNavColor),
              BottomNavigationBarItem(icon: Image.asset('assets/images/moshaf_gold.png',height: 30,color: myProvider.changeIconColor(3)),label: 'Quran',backgroundColor:myProvider.darkMode !? goldColorMainColor:bottomNavColor),
              BottomNavigationBarItem(icon: Icon(Icons.settings,color:myProvider.changeIconColor(4)),label: 'Settings',backgroundColor:myProvider.darkMode !? goldColorMainColor:bottomNavColor),
];
    return BottomNavigationBar(
            
            currentIndex: myProvider.currentIndexx,
            onTap: myProvider.changeIndex,
            backgroundColor: myProvider.darkMode !? goldColorMainColor:bottomNavColor,
            items: bottomNavBarItemList,
          );

          
  }
}