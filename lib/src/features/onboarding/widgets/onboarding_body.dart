import 'package:fcpay/src/features/onboarding/cubit/cubit.dart';
import 'package:fcpay/src/ui/ui.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Assets.images.continueWithGoogle.svg(),
            ],
          ),
        );
      },
    );
  }
}
