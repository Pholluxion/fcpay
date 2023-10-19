import 'package:fcpay/src/features/account/cubit/cubit.dart';
import 'package:fcpay/src/features/home/cubit/cubit.dart';
import 'package:fcpay/src/router.dart';
import 'package:fcpay/src/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AccountBody extends StatelessWidget {
  const AccountBody({
    super.key,
    required this.accountId,
  });

  final String accountId;

  @override
  Widget build(BuildContext context) {
    final account = context
        .read<HomeCubit>()
        .state
        .accounts
        .where(
          (element) => element.account_id.toString() == accountId,
        )
        .first;

    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              QRGenPageRoute(accountId: account.account_id.toString())
                  .go(context),
          child: const Icon(
            Icons.qr_code,
            size: 30.0,
            color: AppColors.black,
          ),
        ),
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.5
                        : MediaQuery.of(context).size.width * 0.2,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff279445),
                      Color(0xffA7E04B),
                    ],
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Saldo disponible',
                        style:
                            UITextStyle.overline.copyWith(color: Colors.white),
                      ),
                      Text(
                        toColombianFormat(account.saldo.toInt()),
                        style:
                            UITextStyle.display2.copyWith(color: Colors.white),
                      ),
                      Text(
                        'Numero de cuenta',
                        style:
                            UITextStyle.overline.copyWith(color: Colors.white),
                      ),
                      Text(
                        account.numero_cuenta,
                        style:
                            UITextStyle.headline3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              BlocBuilder<AccountCubit, AccountState>(
                builder: (context, state) {
                  if (state.history.isEmpty) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: const Center(
                        child: Text(
                          'No se encontraron transacciones.',
                        ),
                      ),
                    );
                  }

                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.history.length,
                    itemBuilder: (context, index) => Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: AppSpacing.sm),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: AppColors.green,
                          radius: 30.0,
                          child: Icon(
                            Icons.payment,
                            size: 30.0,
                            color: AppColors.white,
                          ),
                        ),
                        title: Text(
                          toColombianFormat(state.history[index].monto.toInt()),
                          style: UITextStyle.headline5,
                        ),
                        subtitle: Text(
                          state.history[index].fecha,
                          style: UITextStyle.caption,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String toColombianFormat(int valor) =>
    '\$${NumberFormat.decimalPattern('es_CO').format(valor)}';
