part of 'onboarding_cubit.dart';

class OnboardingState extends Equatable {
  const OnboardingState({
    this.customProperty = 'Default Value',
  });

  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  OnboardingState copyWith({
    String? customProperty,
  }) {
    return OnboardingState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

class OnboardingInitial extends OnboardingState {
  const OnboardingInitial() : super();
}
