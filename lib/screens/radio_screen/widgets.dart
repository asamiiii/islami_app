import 'package:flutter/material.dart';

class RadioCenterImage extends StatelessWidget {
  const RadioCenterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 350,
                height: 222,
                  decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/radio_main.png',),
                    fit: BoxFit.fill,
                  ),
                  //shape: BoxShape.circle,
                ),
              ),
          ],
        );
  }
}

class RadioPlayIcons extends StatelessWidget {
  final String? assetsImages;
 const RadioPlayIcons({super.key,this.assetsImages});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: 13.5,
                height: 23.14,
                  decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        '$assetsImages',),
                    fit: BoxFit.fill,
                  ),
                  //shape: BoxShape.circle,
                ),
              );
  }
}