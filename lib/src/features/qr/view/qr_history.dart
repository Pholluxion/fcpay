import 'package:fcpay/src/features/home/cubit/home_cubit.dart';
import 'package:fcpay/src/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QRHistoryPage extends StatelessWidget {
  const QRHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const QRHistoryView();
  }
}

class QRHistoryView extends StatelessWidget {
  const QRHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: switch (
                  ResponsiveBreakpoints.of(context).breakpoint.name) {
                MOBILE => 1,
                TABLET => 2,
                DESKTOP => 4,
                (_) => 5,
              },
            ),
            itemBuilder: (context, index) {
              final code = context
                      .read<SharedPreferences>()
                      .getString(state.accounts[index].account_id.toString()) ??
                  '';

              return Center(
                child: Column(
                  children: [
                    Text(
                      'Numero de cuenta: ${state.accounts[index].account_id}',
                      style: UITextStyle.headline6,
                    ),
                    QrImageView(
                      data: code,
                      version: QrVersions.auto,
                      size: 300.0,
                      backgroundColor: AppColors.white,
                      eyeStyle: const QrEyeStyle(color: Color(0xffA7E04B)),
                      dataModuleStyle: const QrDataModuleStyle(
                        color: Color(0xff279445),
                        dataModuleShape: QrDataModuleShape.square,
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: state.accounts.length,
          );
        },
      ),
    );
  }
}
