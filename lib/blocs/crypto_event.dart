part of 'crypto_bloc.dart'; // include this

abstract class CryptoEvent extends Equatable {
  const CryptoEvent();

  @override
  List<Object> get props => [];
}

class Start extends CryptoEvent {}

class RefreshCoins extends CryptoEvent {}
