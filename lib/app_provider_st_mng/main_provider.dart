import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class MainProvider extends ChangeNotifier
{

   int currentIndexx = 3;
   void changeIndex(int index){
    
      currentIndexx=index;
      notifyListeners();
    
   }

} 