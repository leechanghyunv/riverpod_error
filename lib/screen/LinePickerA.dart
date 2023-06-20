import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_230619/custom/TextFrame.dart';
import '../model/DataModelA.dart';
import '../model/DataModelB.dart';
import '../model/LineModel.dart';

class LinePickerA extends ConsumerStatefulWidget {

  final List<String> subwayline;

  const LinePickerA({Key? key, required this.subwayline}) : super(key: key);

  @override
  LinePicker createState() => LinePicker();
}

class LinePicker extends ConsumerState<LinePickerA> {

  List<LineModel> selectedList = [];

  late String lineNumber;


  @override
  void initState() {
    super.initState();
    selectedList = widget.subwayline.map((e) => LineModel(name: e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;

    final search = ref.watch(infoProvider); /// subwayinfo
    final codeinfo = ref.watch(codeProvider);
    final lineInfo = ref.watch(lineInfoProvider);

    return AlertDialog(
        content: Container(
          height: widget.subwayline.length == 1 ? 270
              : widget.subwayline.length == 2 ? 320
              : widget.subwayline.length == 3 ? 370
              : widget.subwayline.length == 4 ? 420
              : widget.subwayline.length == 5 ? 470
              : 520,
          color: Colors.grey[200],
          alignment: Alignment.center,
          width: double.maxFinite,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextFrame(comment: '${search[0].name}'),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(search[0].line.length,
                          (index) => CheckboxListTile(
                              title: Row(
                                children: [
                                  IconCustom(selectedList[index].name),
                                  SizedBox(width: 10,),
                                  TextFrame(comment: selectedList[index].name),
                                ],
                              ),
                              value: selectedList[index].isSelected,
                              activeColor: Colors.grey[600],
                          onChanged: (val) {
                            if (val != null) {
                              selectedList = List.from(selectedList.map((e) {
                                if (e.name == selectedList[index].name) {
                                  lineNumber = selectedList[index].name;
                                  setState(() {});
                                  return e.copyWith(isSelected: !e.isSelected);
                                } else {
                                  return e;
                                }
                              })
                              );
                            }
                          })),
                ),
              ),
            ],
          ),
        ),
      actions: [
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: (){
                    ref.read(codeProvider.notifier).searchCode(lineDataList, lineNumber);
                    setState(() {});
                    Navigator.pop(context);
              }, child: TextFrame(comment: 'Done')),
            ),
          ],
        ),
      ],
      );



  }
  Widget IconCustom(String line) =>
      Icon(Icons.square,
        color: line == 'Line1' ? const Color(0xff2a4193)
            : line == 'Line2' ? const Color(0xff027a31)
            : line == 'Line3' ? const Color(0xffd75e02)
            : line == 'Line4' ? const Color(0xff028bb9)
            : line == 'Line5' ? const Color(0xff9637b6)
            : line == 'Line6' ? const Color(0xff885408)
            : line == 'Line7' ? const Color(0xff525d02)
            : line == 'Line8' ? const Color(0xfff62d37)
            : line == 'Line9' ? const Color(0xff916a2a)
            : line == '서해' ? const Color(0xff8FC31F)
            : line == '공항' ? const Color(0xff0090D2)
            : line == '경의중앙' ? const Color(0xff77C4A3)
            : line == '경춘' ? const Color(0xff0C8E72)
            : line == '수인분당' ? const Color(0xFFE8E818)
            : line == '신분당' ? const Color(0xffD4003B)
            : line == '경강선' ? const Color(0xff003DA5)
            : line == '인천1선' ? const Color(0xff7CA8D5)
            : line == '인천2선' ? const Color(0xffED8B00)
            : line == '에버라인' ? const Color(0xff6FB245)
            : line == '의정부' ? const Color(0xffFDA600)
            : line == '우이신설' ? const Color(0xffB7C452)
            : line == '김포골드' ? const Color(0xffA17800)
            : line == '신림' ? const Color(0xff6789CA)
            : Colors.black,
      );
}


