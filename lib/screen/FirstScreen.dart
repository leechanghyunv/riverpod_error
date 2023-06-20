import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:riverpod_230619/custom/TextFrame.dart';
import '../custom/SubwayTextfield.dart';
import '../model/DataModelA.dart';
import 'Layout.dart';
import 'LinePickerA.dart';

final box = GetStorage();

class HomeView extends ConsumerStatefulWidget {

  const HomeView({Key? key}) : super(key: key);

  @override
  HomePage createState() => HomePage();
}

class HomePage extends ConsumerState<HomeView> {

  @override
  Widget build(BuildContext context) {

    return LayoutPage(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: ElevatedButton(
                      onPressed: (){
                        Get.dialog(
                          AlertDialog(
                            content: Container(
                              height: 200,
                              child: Column(
                                children: [
                                  InputSubway(
                                    onSelected: (val){
                                      ref.read(typeFilter.notifier).update((state) => SubwayFilter.A);
                                      ref.read(infoProvider.notifier).searchSubway(subwayInfos, val.name);
                                      Get.dialog(
                                        LinePickerA(subwayline: val.line),
                                      );
                                      setState(() {});
                                      },
                                  ),
                                ],
                              ),

                            ),
                            actions: [
                              Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
                                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10)),
                                        ),
                                        onPressed: (){

                                      Navigator.pop(context);
                                    }, child: TextFrame(comment: 'Save Data',color: Colors.black,)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                        },




                      onLongPress: (){
                        Get.dialog(
                          AlertDialog(
                            content: Container(
                              height: 200,
                              child: Column(
                                children: [
                                  InputSubway(
                                    onSelected: (val){
                                      ref.read(typeFilter.notifier).update((state) => SubwayFilter.B);
                                      ref.read(infoProvider.notifier).searchSubway(subwayInfos, val.name);
                                      Get.dialog(
                                        LinePickerA(subwayline: val.line),
                                      );
                                      setState(() {});
                                      },
                                  ),

                                ],
                              ),

                            ),
                            actions: [
                              Row(
                                children: [
                                  Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
                                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10)),
                                          ),
                                          onPressed: (){
                                            Navigator.pop(context);
                                          }, child: TextFrame(comment: 'Save Data',color: Colors.black,))),
                                ],
                              )
                            ],
                          ),
                        );
                        },
                      child: TextFrame(comment: 'Search Subway Infomation'),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 150,
              width: double.maxFinite,
              color: Colors.blueGrey[300],
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFrame(comment: '${box.read('nameA') ?? '???'} // ${box.read('engnameA') ?? '???'}',),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFrame(comment: '${box.read('latA') ?? '???'} // ${box.read('lngA') ?? '???'}',),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFrame(comment: '${box.read('lineA') ?? '???'} // ${box.read('codeA') ?? '???'} ',),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }

}
