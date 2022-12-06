import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainProvider extends ChangeNotifier
{
   List<String> hadeethTitle=[];
   List<String> ayat=[];
   String ahadeethData = '';
   String quranData = '';
   String selectedAya='';
   int selectedAyaIndex=0;
   int? selectedSuraOfAyaIndex;
   List<String>ahadeethList=[];
   String ahadeethDataWithOutTitle = '';
   List<String>ahadeethLinesList=[];

    final ItemScrollController itemScrollController =ItemScrollController();
    final ItemPositionsListener itemPositionsListener =ItemPositionsListener.create();

   int sebhaCounter = 0;
   int tasbeehIndex=0;
   List<String> tasbeehList=['How great is our God','Thank God ','there is no god but Allah','Allah is the greatest'];

   void addNumberOFSebha(){
    if(sebhaCounter<33){
      sebhaCounter++;
      notifyListeners();
    }
    else{
      sebhaCounter=0;
      if(tasbeehIndex<tasbeehList.length){
        tasbeehIndex++;
        notifyListeners();
      }
      if(tasbeehIndex==tasbeehList.length){
        tasbeehIndex=0;
        notifyListeners();
      }

   }
    
    
    notifyListeners();
    
   }

  void tasbeehChange(){
        sebhaCounter=0;
        if(tasbeehIndex<tasbeehList.length){
        tasbeehIndex++;
        notifyListeners();
      }
      if(tasbeehIndex==tasbeehList.length){
        tasbeehIndex=0;
        notifyListeners();
      }

      }

      String replaceArabicNumber(String input) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const arabic = ['۰', '۱', '۲', '۳', '٤', '۵', '٦', '۷', '۸', '۹'];

  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(english[i], arabic[i]);
  }

  return input;
}



   int currentIndexx = 3;
   void changeIndex(int index){
    
      currentIndexx=index;
      notifyListeners();
    
   }

     Future<void> loadAhadeeth() async {
      if(ahadeethList.isEmpty){
        final loadedData = await rootBundle.loadString('assets/files/ahadeth.txt');
    ahadeethData = loadedData;
    ahadeethList=ahadeethData.trim().split('#\r\n');
   // print(ahadeethList[0]);
    for(int i=0;i<ahadeethList.length;i++){
    String hadeeth=ahadeethList[i];
      //print('------$hadeeth------');
      ahadeethLinesList=hadeeth.split('\n');
      hadeethTitle.add(ahadeethLinesList[0]);
      //print(hadeethTitle);
      ahadeethLinesList.removeAt(0);
      //print(ahadeethLinesList);
      notifyListeners();
       }
      }
    
    
  }

       Future<void> loadQuran(int index) async {
        final loadedData = await rootBundle.loadString('assets/files/quran_files/$index.txt');
            quranData= loadedData;
            ayat = quranData.trim().split('\n');
            print(index);
             notifyListeners();
        
       }

       addFlag(int index,int selectedSuraIndex){
         selectedAya=ayat[index];
         selectedAyaIndex=index;
         selectedSuraOfAyaIndex=selectedSuraIndex;
         notifyListeners();             //myProvider.selectedAyaIndex=index;
       }

        bool? isFlaged ()  {
        for(int i =0;i<ayat.length;i++){
          if(selectedAya==ayat[i]){
            print('---------$selectedAya--------');
            if(itemScrollController.isAttached){
               itemScrollController.scrollTo(
               index: selectedAyaIndex,
               duration: const Duration(seconds: 1),
               curve: Curves.easeInOutCubic);
                 }
            return true;
          }
        }
        return false;
       }

      void addTasbeeha(String tasbeehaText){
              if(tasbeehaText.isNotEmpty){
                tasbeehList.add(tasbeehaText);
                notifyListeners();
              }
              
              
       }
      }
    
    
  