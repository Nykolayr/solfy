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
  ErrorsResponse error;

  CardError({
    required this.error,
  });
}

class CardSuccess extends CardState {}
