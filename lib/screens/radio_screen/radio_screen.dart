import 'package:flutter/material.dart';
import 'package:islami_app/screens/radio_screen/widgets.dart';


class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          const RadioCenterImage(),
          Text('Broadcasting the Holy Quran',style: Theme.of(context).textTheme.headline3,),
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
               RadioPlayIcons(assetsImages:'assets/images/back_radio.png'),
               RadioPlayIcons(assetsImages: 'assets/images/play_radio.png',),
               RadioPlayIcons(assetsImages: 'assets/images/next_radio.png',)
            ],
          )

        ],
      ),
    );
  }
}