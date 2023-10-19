import 'package:fcpay/src/features/onboarding/cubit/cubit.dart';
import 'package:fcpay/src/ui/ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff279445),
                Color(0xffA7E04B),
              ],
            ),
          ),
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 450),
              child: ListView(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(AppSpacing.xlg),
                children: [
                  const AppLogo(
                    height: 300,
                    width: 200,
                  ),
                  const SizedBox(height: 48),
                  _LoginButton(),
                  const SizedBox(height: 16),
                  _ScannerButton(),
                  const SizedBox(height: 16),
                  Text(
                    '¡Comienza a simplificar tus transacciones ahora mismo!',
                    textAlign: TextAlign.center,
                    style: UITextStyle.subtitle1.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppButton.green(
      key: const Key('loginForm_continue_raisedButton'),
      onPressed: () => context.goNamed('Login'),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Ingresar')],
      ),
    );
  }
}

class _ScannerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !kIsWeb,
      child: ElevatedButton.icon(
        label: const Text('Pagar'),
        onPressed: () => context.goNamed('QR-Scanner'),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffA7E04B),
        ),
        icon: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.qr_code,
            size: 50.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
