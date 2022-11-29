import 'package:flutter/material.dart';

class HadeethTopCenterImage extends StatelessWidget {
  const HadeethTopCenterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 280,
                height: 190,
                  decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/hadeeth_center_pic.png',),
                    fit: BoxFit.fill,
                  ),
                  //shape: BoxShape.circle,
                ),
              ),
          ],
        );
  }
}