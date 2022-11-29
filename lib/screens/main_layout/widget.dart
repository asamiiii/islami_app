import 'package:flutter/material.dart';
import 'package:islami_app/app_provider_st_mng/main_provider.dart';
import 'package:provider/provider.dart';
import '../../app_theme/main_theme.dart';
import '../../fixed_data/fixed.dart';


class MainBgImage extends StatelessWidget {
  const MainBgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          
          decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bg3.png'),
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
    return BottomNavigationBar(
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
            currentIndex: myProvider.currentIndexx,
            onTap: myProvider.changeIndex,
            backgroundColor: goldColorMainColor,
            items: bottomNavBarItemList,
          );
  }
}