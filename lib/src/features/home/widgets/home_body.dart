import 'package:fcpay/src/router.dart';
import 'package:fcpay/src/ui/colors/app_colors.dart';
import 'package:fcpay/src/ui/spacing/spacing.dart';
import 'package:fcpay/src/ui/typography/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:fcpay/src/features/home/cubit/cubit.dart';
import 'package:intl/intl.dart';

import '../../../utils/widgets/widgets.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PageHeader(title: 'Tus cuentas', description: ''),
                  Padding(
                    padding: EdgeInsets.all(AppSpacing.lg),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffA7E04B),
                      child: Icon(
                        Icons.account_circle,
                        color: AppColors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: state.accounts.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final account = state.accounts[index];
                  return ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Cuenta ahorro personal',
                          style: UITextStyle.subtitle1
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          account.numero_cuenta,
                          style: UITextStyle.subtitle1.copyWith(
                            fontWeight: FontWeight.w100,
                            color: const Color(0xff858585),
                          ),
                        ),
                        Text(
                          'Balance',
                          style: UITextStyle.subtitle1
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          toColombianFormat(account.saldo.toInt()),
                          style: UITextStyle.subtitle1.copyWith(
                            fontWeight: FontWeight.w100,
                            color: const Color(0xff858585),
                          ),
                        ),
                      ],
                    ),
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                      size: 50.0,
                    ),
                    onTap: () {
                      AccountPageRoute(accountId: account.account_id.toString())
                          .go(context);
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

String toColombianFormat(int valor) =>
    '\$${NumberFormat.decimalPattern('es_CO').format(valor)}';
