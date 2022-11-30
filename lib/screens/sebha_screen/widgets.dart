import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app_provider_st_mng/main_provider.dart';
import '../../app_theme/main_theme.dart';

class SebhaTopCenterImage extends StatelessWidget {
  const SebhaTopCenterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 232,
                height: 312,
                  decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/sebha.png',),
                    fit: BoxFit.fill,
                  ),
                  //shape: BoxShape.circle,
                ),
              ),
          ],
        );
  }
}

class SebhaCounterBox extends StatelessWidget {
  const SebhaCounterBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider=Provider.of<MainProvider>(context);
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  
              [Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child:Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                      )
                  ),
                  child:  Center(
                    child: Text('${myProvider.sebhaCounter}',style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),)),
                    
                    ),
              ),
              ],
            );
  }
}

class TasbbehBox extends StatelessWidget {
  const TasbbehBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider=Provider.of<MainProvider>(context);
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 InkWell(
                  onTap: () {
                    return myProvider.addNumberOFSebha();
                  },
                  onLongPress: () {
                    return myProvider.tasbeehChange();
                  },
                   child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    decoration: const BoxDecoration(
                      color: goldColorMainColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10)
                        )
                    ),
                    child:  Center(
                      child: Text('${myProvider.tasbeehList[myProvider.tasbeehIndex]} ',style: Theme.of(context).textTheme.headline3!,))),
                 )
              ],
            );
  }
}
