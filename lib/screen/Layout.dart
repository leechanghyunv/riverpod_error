import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/DataModelA.dart';
import '../model/DataModelB.dart';
import 'LinePickerA.dart';

class LayoutPage extends ConsumerWidget {

  final Widget? body;
  const LayoutPage({Key? key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(typeFilter); /// A,B,C
    final search = ref.watch(infoProvider); /// subwayinfo
    final subinfo = ref.watch(subInfoProvider); /// A,B,C + Infomation을 통합
    final lineInfo = ref.watch(lineInfoProvider);

    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: body,
        )
    );
  }
}
