import 'package:flutter/material.dart';

class QuranTopCenterImage extends StatelessWidget {
  const QuranTopCenterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 0),
                width: 205,
                height: 227,
                  decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/center_main_image.png',),
                    fit: BoxFit.fill,
                  ),
                  //shape: BoxShape.circle,
                ),
              ),
          ],
        );
  }
}
