class FormItemModel {
  FormItemModel({
    required this.name,
    this.initialValue,
    this.uneditableValue = false,
  });

  bool uneditableValue;

  String name;

  String? initialValue;
}
