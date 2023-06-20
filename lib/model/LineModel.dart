import 'package:freezed_annotation/freezed_annotation.dart';
part 'LineModel.freezed.dart';
part 'LineModel.g.dart';

@Freezed()
class LineModel with _$LineModel{
  const factory LineModel({
    @Default(false) bool isSelected,
    required String name,
  }) = _LineModel;
  factory LineModel.fromJson(Map<String, Object?> json) => _$LineModelFromJson(json);
}