import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/DataModelA.dart';
import 'TextFrame.dart';

const Color subwayfield_text = Colors.black;

class InputSubway extends StatelessWidget {

  final void Function(SubwayModel)? onSelected;

  InputSubway({
    Key? key,
    this.onSelected}) : super(key: key);

  static String displayStringForOptionB (SubwayModel e) => e.name;

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;///  896.0 IPHONE11
    return Container(
      width: appHeight * 0.2791,
      height: appHeight * 0.07255,
      child: RawAutocomplete<SubwayModel>(
        optionsBuilder: (TextEditingValue textEditingValue){
          return subwayInfos.where((SubwayModel e){
            return e.toString().contains(textEditingValue.text.toLowerCase());
          });
        },
        displayStringForOption: displayStringForOptionB,
        fieldViewBuilder: (
            BuildContext context,
            TextEditingController textEditingController,
            FocusNode focusNode,
            VoidCallback onFieldSubmitted,
            ){
          return TextFormField(
            controller: textEditingController,
            focusNode: focusNode,
            decoration: InputDecoration(
              hintText: '입력 후 완료버튼을 누르세요',
              labelText: 'Enter Destination',
              hintStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(
                Icons.subway,
                color: Colors.black,
              ),
              suffixIcon: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10.0),
                  onTap: () {
                    textEditingController.clear();
                  },
                  child: Icon(
                      Icons.clear,
                      color: Colors.black
                  ),
                ),
              ),
            ),
          );
        },
        optionsViewBuilder: (
            BuildContext context,
            AutocompleteOnSelected<SubwayModel> onSelected,
            Iterable<SubwayModel> options ){
          return Align(
            alignment: Alignment.topLeft,
            child: Material(
              child: SizedBox(
                width: appHeight * 0.28,
                height: appHeight * 0.3,
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: options.length,
                      itemBuilder: (BuildContext context, int index){
                        final SubwayModel e = options.elementAt(index);
                        return GestureDetector(
                          onTap: (){
                            onSelected(e);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: ListTile(
                              title: TextFrame(comment: e.name),
                              subtitle: TextFrame(comment: e.engname),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
          );
        },
        onSelected: onSelected,
      ),
    );
  }
}
