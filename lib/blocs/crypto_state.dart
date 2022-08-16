part of 'crypto_bloc.dart'; // include this

enum Status { initial, loading, loaded, error }

class CryptoState extends Equatable {
  final List<CryptoCurrency> coins;
  final Status status;
  final DataError onError;

  const CryptoState({
    required this.coins,
    required this.status,
    required this.onError,
  });

  @override
  List<Object> get props => [coins, status, onError];

  factory CryptoState.start() => const CryptoState(
        coins: [],
        status: Status.initial,
        onError: DataError(),
      );

  CryptoState copyWith({
    List<CryptoCurrency>? coins,
    Status? status,
    DataError? failure,
  }) {
    return CryptoState(
      coins: coins ?? this.coins,
      status: status ?? this.status,
      onError: failure ?? this.onError,
    );
  }
}
