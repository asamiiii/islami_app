import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app_provider_st_mng/main_provider.dart';
import '../../app_theme/light_theme.dart';

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
                  borderRadius: BorderRadius.circular(50),
                  highlightColor: Colors.amber,
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
                      //color: goldColorMainColor,
                      borderRadius: BorderRadius.all(Radius.circular(50)
                        )
                    ),
                    child:  Center(
                      child: Text('${myProvider.tasbeehList[myProvider.tasbeehIndex]} ',style: Theme.of(context).textTheme.headline3!,))),
                 )
              ],
            );
  }
}

class AddTasbeeha extends StatelessWidget {
   AddTasbeeha({super.key});
  final TextEditingController tasbeehaController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var myProvider=Provider.of<MainProvider>(context);
    return Container(
                margin: const EdgeInsets.only(top: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     InkWell(
                      onTap: () {
                        showBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          height: MediaQuery.of(context).size.height*0.40,
                         color: goldColorMainColor,
                         child: SingleChildScrollView(
                           child: Column(
                            
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 50,horizontal: 50),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                                                  ),
                                child:  TextField(
                            controller:tasbeehaController ,
                            decoration: const InputDecoration(
                            hintText: 'Add Tasbeeh',
                            hintStyle:
                             TextStyle(color: Colors.grey,),),
                           style:  const TextStyle(
                             fontSize: 20,
                            color: Colors.black,
                                 ),),
                              ),
                                  
                                  Container(
                                 width: 200,
                                 height: 50,
                                 color:Colors.brown,
                                 child: TextButton(
                                 onPressed: (){
                                   myProvider.addTasbeeha(tasbeehaController.text);
                                   Navigator.pop(context);
                                 },
                                 child: const Text(
                                     'Add',
                                       style: TextStyle(color: Color.fromARGB(255, 171, 186, 224)),
            )))
                               
                            ],
                           ),
                         ),
                  ));
                      },
                       child: Container(
                        decoration: const BoxDecoration(
                          color: goldColorMainColor,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                            )
                        ),
                        width: 150,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [
                             Text('Add Tasbeeh'),
                             Icon(Icons.add),
                          ],
                        ),
                        ),
                     ),
                   ],
                 ),
               );
  }
}

class RemoveTasbeeha extends StatelessWidget {
   RemoveTasbeeha({super.key});
  final TextEditingController tasbeehaController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var myProvider=Provider.of<MainProvider>(context);
    return Container(
                margin: const EdgeInsets.only(top: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     InkWell(
                       child: Container(
                        decoration: const BoxDecoration(
                          color: goldColorMainColor,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                            )
                        ),
                        width: 150,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [
                             Text('Remove '),
                             Icon(Icons.remove),
                          ],
                        ),
                        ),
                        onTap: () {
                        showBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          height: MediaQuery.of(context).size.height*0.40,
                         color: goldColorMainColor,
                         child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Dismissible(
                              background: Container(color: Colors.red),
                              key: Key(myProvider.tasbeehList[index]),
                              onDismissed: (direction) {
                                if(myProvider.tasbeehList.length>1){
                                   myProvider.tasbeehList.removeAt(index);
                                   ScaffoldMessenger.of(context)
                                   .showSnackBar(const SnackBar(content: Text(' dismissed')));
                                }
                                else{
                                  ScaffoldMessenger.of(context)
                                   .showSnackBar(const SnackBar(content: Text('at least 1 item')));

                                }
                                
                              },  child: ListTile(
                                     title: Text(myProvider.tasbeehList[index]),
                              )
                          ,);
                         },
                         itemCount: myProvider.tasbeehList.length,
                          )));})]));}}
              
  

