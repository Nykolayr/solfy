import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_view_model.freezed.dart';

@freezed
// ignore_for_file: invalid_annotation_target
class CategoryViewModel with _$CategoryViewModel {
  const factory CategoryViewModel(
    /// Идентификатор категории
    @JsonKey(name: "id") int? id,

    /// Название категории
    @JsonKey(name: "name") String? name,

    /// Ссылка на иконку категории
    @JsonKey(name: "icon") String? icon,
  ) = Category;
}
