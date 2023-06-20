import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../screen/FirstScreen.dart';
import 'DataModelB.dart';
part 'DataModelA.freezed.dart';
part 'DataModelA.g.dart';

@Freezed()
class SubwayModel with _$SubwayModel{
  const factory SubwayModel({
    required String name,
    required String engname,
    required double lat,
    required double lng,
    required List<String> line,
    @Default(0.0) num? km,
  }) = _SubwayModel;
  factory SubwayModel.fromJson(Map<String, Object?> json) => _$SubwayModelFromJson(json);
}
extension MutableSubwayModelExtension on SubwayModel {
  SubwayModel setKm(double newKm) {
    return copyWith(km: newKm);
  }
}

class DataController extends StateNotifier<List<SubwayModel>>{
  DataController() : super([]);

  void searchSubway(subwayModels, name) {
    final searchResults = subwayModels.where((e) => e.name == name).toList();
    state = searchResults;
  }
}
final infoProvider = StateNotifierProvider<DataController, List<SubwayModel>>((ref) => DataController());

enum SubwayFilter {
  A, B, T,
}

final typeFilter = StateProvider((_) => SubwayFilter.A);

final subInfoProvider = Provider<List<SubwayModel>>((ref) {
  final filter = ref.watch(typeFilter);
  final subwayinfo = ref.watch(infoProvider);

  switch (filter) {
    case SubwayFilter.A:
      box.write('nameA',subwayinfo.elementAtOrNull(0)?.name);
      box.write('latA',subwayinfo.elementAtOrNull(0)?.lat);
      box.write('lngA',subwayinfo.elementAtOrNull(0)?.lng);
      box.write('engnameA',subwayinfo.elementAtOrNull(0)?.engname);
      return subwayinfo.toList();
    case SubwayFilter.B:
      box.write('nameB',subwayinfo.elementAtOrNull(0)?.name);
      box.write('latB',subwayinfo.elementAtOrNull(0)?.lat);
      box.write('lngB',subwayinfo.elementAtOrNull(0)?.lng);
      box.write('engnameB',subwayinfo.elementAtOrNull(0)?.engname);
      return subwayinfo.toList();
    case SubwayFilter.T:
      box.write('nameT',subwayinfo.elementAtOrNull(0)?.name);
      box.write('latT',subwayinfo.elementAtOrNull(0)?.lat);
      box.write('lngT',subwayinfo.elementAtOrNull(0)?.lng);
      box.write('engnameT',subwayinfo.elementAtOrNull(0)?.engname);
      return subwayinfo;
  }
});

List<SubwayModel> subwayInfos = [
  const SubwayModel(name:'수원',	engname:	'Suwon',	lat:	37.265974,	lng:	126.999874,	line: ['Line1','수인분당']),
  const SubwayModel(name:'선릉',	engname:	'Seolleung ',	lat:	37.504503,	lng:	127.049008,	line: ['Line2','수인분당']),
  const SubwayModel(name:'서초',	engname:	'Seocho',	lat:	37.491897,	lng:	127.007917,	line: ['Line2']	),
  const SubwayModel(name:'명동',	engname:	'Myeong-dong ',	lat:	37.560989,	lng:	126.986325,	line: ['Line4']	),
  const SubwayModel(name:'서울',	engname:	'Seoul Station',	lat:	37.554526,	lng:	126.970385,	line: ['Line1','Line4','경의중앙','공항']),
];