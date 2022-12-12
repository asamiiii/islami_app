import 'package:flutter/material.dart';
import 'package:islami_app/app_theme/light_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../app_provider_st_mng/main_provider.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
      var myProvider=Provider.of<MainProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(myProvider.darkMode! ?  AppLocalizations.of(context).darkMode:AppLocalizations.of(context).lightMode,style: Theme.of(context).textTheme.headline3,),
            Switch(
      // This bool value toggles the switch.
      value: myProvider.darkMode!,
      activeColor: goldColorMainColor,
      activeTrackColor: whiteColorMainColor,
      inactiveTrackColor: yellowDark,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        myProvider.changeThemode(value);
         
      },
    ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(myProvider.isArabic! ? AppLocalizations.of(context).enLanguage: AppLocalizations.of(context).arLanguage,style:Theme.of(context).textTheme.headline3),
            Switch(
      // This bool value toggles the switch.
      value: myProvider.isArabic!,
      activeColor: goldColorMainColor,
      activeTrackColor: whiteColorMainColor,
      inactiveTrackColor: yellowDark,
      onChanged: (bool value) {
        myProvider.changeLanguage(value);
      },
      
    ),
          ],
        ),
      ],
    );
  }
}