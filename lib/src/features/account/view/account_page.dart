import 'package:flutter/material.dart';
import 'package:fcpay/src/features/account/cubit/cubit.dart';
import 'package:fcpay/src/features/account/widgets/account_body.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({
    super.key,
    required this.account,
  });
  final String account;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountCubit(context.read<SharedPreferences>()),
      child: Scaffold(
        body: AccountView(account: account),
      ),
    );
  }
}

class AccountView extends StatefulWidget {
  const AccountView({
    super.key,
    required this.account,
  });
  final String account;

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  void initState() {
    context.read<AccountCubit>().getHistory(widget.account);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AccountBody(accountId: widget.account);
  }
}
