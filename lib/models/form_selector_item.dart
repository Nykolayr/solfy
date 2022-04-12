class FormSelectorItem {
  FormSelectorItem({
    required this.text,
    this.isEnabled = false,
    this.onTap,
  });

  String text;

  void Function()? onTap;

  bool isEnabled;
}
