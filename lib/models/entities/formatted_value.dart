/// Форматированное значение
///
/// Значение - [value]
/// Функция форматирования - [formatter]
/// Форматированное значение - [formattedValue]
class FormattedValue<T> {
  /// Значение
  final T value;

  /// Функция форматирования
  final String Function(T value) formatter;

  /// Форматированное значение
  String get formattedValue => formatter(value);

  FormattedValue({
    required this.value,
    required this.formatter,
  });

  @override
  String toString() => formatter(value);
}
