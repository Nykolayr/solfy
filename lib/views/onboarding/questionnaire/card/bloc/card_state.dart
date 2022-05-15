// ignore_for_file: must_be_immutable

part of 'card_bloc.dart';

abstract class CardState extends Equatable {
  const CardState();

  @override
  List<Object> get props => [];
}

class CardInitial extends CardState {}

class CardLoad extends CardState {}

class CardError extends CardState {
  ErrorsResponse errors;

  CardError({
    required this.errors,
  });
}

class CardResError extends CardState {
  ErrorsResponse errors;

  CardResError({
    required this.errors,
  });
}

class CardCodeError extends CardState {
  ErrorsResponse errors;

  CardCodeError({
    required this.errors,
  });
}

class CardSuccess extends CardState {}

class CardCodeSuccess extends CardState {}

class CardResendSuccess extends CardState {}
