import 'package:flutter/material.dart';
import 'package:islami_app/screens/sebha_screen/widgets.dart';


class SebhaScreen extends StatelessWidget {
  const SebhaScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const SebhaTopCenterImage(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const [
             SebhaCounterBox(),
             TasbbehBox()
          ],
        )

      ],
    );
  }
}