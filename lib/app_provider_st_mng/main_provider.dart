import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class MainProvider extends ChangeNotifier
{
   List<String> hadeethTitle=[];
   String ahadeethData = '';
   List<String>ahadeethList=[];
   String ahadeethDataWithOutTitle = '';
   List<String>ahadeethLinesList=[];


   int currentIndexx = 3;
   void changeIndex(int index){
    
      currentIndexx=index;
      notifyListeners();
    
   }

     Future<void> loadData() async {
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
      print(ahadeethLinesList);
      notifyListeners();
       }
      }
    
    
  }

} 