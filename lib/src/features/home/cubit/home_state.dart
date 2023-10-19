part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({this.accounts = const []});

  final List<Account> accounts;

  @override
  List<Object> get props => [accounts];

  HomeState copyWith({
    List<Account>? accounts,
  }) {
    return HomeState(
      accounts: accounts ?? this.accounts,
    );
  }
}
