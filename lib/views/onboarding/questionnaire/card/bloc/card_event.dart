// ignore_for_file: must_be_immutable

part of 'card_bloc.dart';

abstract class CardEvent extends Equatable {
  const CardEvent();

  @override
  List<Object> get props => [];
}

class PressAddCard extends CardEvent {
  String numberCard;
  String dataCard;
  String insurance_premium;
  PressAddCard({
    required this.numberCard,
    required this.dataCard,
    required this.insurance_premium,
  });
}

class SendNewCodeCard extends CardEvent {
  String code;
  SendNewCodeCard({
    required this.code,
  });
}

class SendResCode extends CardEvent {}
