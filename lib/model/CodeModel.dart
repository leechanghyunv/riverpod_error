import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

import 'DataModelB.dart';
part 'CodeModel.freezed.dart';
part 'CodeModel.g.dart';

@Freezed()
class CodeModel with _$CodeModel{
  const factory CodeModel({
    @Default("정보없음") @JsonKey(name: 'STATION_CD') String stationCd,
    @Default("정보없음") @JsonKey(name: 'STATION_NM') String subwayname,
    @Default("정보없음") @JsonKey(name: 'LINE_NUM') String line,
    @Default("정보없음") @JsonKey(name: 'FR_CODE') String code,
  }) = _CodeModel;
  factory CodeModel.fromJson(Map<String, Object?> json) => _$CodeModelFromJson(json);
}



// Future<void> callCode(String name, String line) async {
//   if(name == '서울'){
//     name = '서울역';
//   }
//   final nameWithoutParentheses = name.replaceAll(RegExp(r'\([^()]*\)'), '');
//   Datas.retriveLine(lineDataList, line);
//   var lineB = Datas.lineStringB;
//   final response = await codeapiservice.getCode(nameWithoutParentheses);
//   final Iterable CodeData = jsonDecode(response.body)['SearchInfoBySubwayNameService']['row'];
//   codes.assignAll(CodeData.map((e) => CodeModel.fromJson(e)).toList());
//   final index = codes.indexWhere((element) => element.line == lineB);
//   codeResult = codes[index].stationCd;
// }
