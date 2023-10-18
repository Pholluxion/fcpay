import 'package:flutter/material.dart';
import 'package:fcpay/src/features/onboarding/cubit/cubit.dart';
import 'package:fcpay/src/features/onboarding/widgets/onboarding_body.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: const Scaffold(
        body: OnboardingView(),
      ),
    );
  }
}

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingBody();
  }
}
