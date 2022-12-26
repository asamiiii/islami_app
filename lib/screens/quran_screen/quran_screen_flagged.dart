import 'package:flutter/material.dart';
import 'package:islami_app/screens/quran_screen/quran_screen_deatailes.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../app_provider_st_mng/main_provider.dart';
import '../../app_theme/light_theme.dart';
import '../main_layout/widget.dart';

class QuranScreenDetailesSelected extends StatelessWidget {
  final String? title;
  final int? index;

  const QuranScreenDetailesSelected({super.key, this.title, this.index});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MainProvider>(context);
    if (myProvider.ayat.isEmpty) {
      myProvider.loadQuran(index!);
    }
    

    return Stack(
      children: [
        const MainBgImage(),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              title!,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                    bottomRight: Radius.circular(70),
                  )),
              child: myProvider.ayat.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : Container(
                      margin: const EdgeInsets.all(30),
                      child: ScrollablePositionedList.separated(
                          initialScrollIndex: myProvider.selectedAyaIndex,
                          itemScrollController: myProvider.itemScrollController,
                          itemPositionsListener:
                              myProvider.itemPositionsListener,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              child: Row(
                                textDirection: TextDirection.ltr,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Stack(
                                    children: [
                                      Positioned(
                                          //left: 10,
                                          child:myProvider.darkMode! ? Image.asset('assets/images/star.png',height: 40,width: 40,):Image.asset('assets/images/star_dark.png',height: 40,width: 40,)),
                                      Positioned(
                                          width: 40,
                                          height: 40,
                                          //top:7,
                                          child: Center(
                                              child: Text(
                                            myProvider.replaceArabicNumber(
                                                (index + 1).toString()),
                                            style: const TextStyle(
                                                fontSize: 9,
                                                color: Colors.brown,
                                                fontWeight: FontWeight.bold),
                                          )))
                                    ],
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onLongPress: () {
                                        myProvider.addFlag(index,
                                            myProvider.selectedSuraOfAyaIndex!);
                                      },
                                      child: Text(
                                        myProvider.ayat[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3,
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  myProvider.selectedAya ==
                                          myProvider.ayat[index]
                                      ? Image.asset(
                                          'assets/images/flag.png',
                                          height: 40,
                                          width: 40,
                                        )
                                      : Container()
                                ],
                              ),
                            );
                          },
                          itemCount: myProvider.ayat.length,
                          separatorBuilder: (context, index) {
                            return const Divider(
                              color: goldColorMainColor,
                              thickness: 2,
                              indent: 10,
                              endIndent: 10,
                            );
                          }))),
        ),
      ],
    );
  }
}
