part of 'account_cubit.dart';

class AccountState extends Equatable {
  const AccountState({
    this.history = const [],
  });

  final List<History> history;

  @override
  List<Object> get props => [history];

  AccountState copyWith({
    List<History>? history,
  }) {
    return AccountState(
      history: history ?? this.history,
    );
  }
}
