/// Статус фетча
enum FetchStatus { None, Pending, Error, Success }

/// Тип соглашения
enum AgreementType { tou, cpdp }

// Направление (для анимации)
enum Direction { upToDown, downToUp }

// Тип виджета с пин-кодом
enum PinCodeType { Register, Login, Update }

// Тип виджета со строкой для фильтра
enum FilterRowType { Switch, Checkmark }

// Тип виджета со строкой для фильтра
enum FactAddressSelector { SameAsRegistrationAddress, SameAsTempAddress, New }
