import 'package:flutter/material.dart';
import 'package:fcpay/src/features/qr/cubit/cubit.dart';
import 'package:fcpay/src/features/qr/widgets/qr_body.dart';

class QrPage extends StatelessWidget {
  const QrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QrCubit(),
      child: const Scaffold(
        body: QrView(),
      ),
    );
  }
}

class QrView extends StatelessWidget {
  const QrView({super.key});

  @override
  Widget build(BuildContext context) {
    return const QrBody();
  }
}
