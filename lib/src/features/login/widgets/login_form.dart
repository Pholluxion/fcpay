import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

import '../../../ui/spacing/app_spacing.dart';
import '../../../ui/widgets/widgets.dart';
import '../../../utils/widgets/text_password_field.dart';
import '../cubits/cubits.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state.status.isFailure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content:
                        Text(state.errorMessage ?? 'Error al autenticarse'),
                  ),
                );
            }

            if (state.status.isSuccess) {
              context.go('/home');
            }
          },
        ),
        BlocListener<LocalAuthCubit, LocalAuthState>(
          listener: (context, state) {
            if (state.isAuthenticated) {
              context.go('/home');
            }
          },
        ),
      ],
      child: Center(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xlg),
          children: [
            const AppLogo(
              height: 250,
              width: 300,
            ),
            _EmailInput(),
            const SizedBox(height: 8),
            _PasswordInput(),
            const SizedBox(height: 8),
            _LoginButton(),
            const SizedBox(height: AppSpacing.xlg * 4),
            _FingerPrintButton(),
          ],
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppEmailTextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          hintText: 'Correo electrónico',
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return AppPasswordTextField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<LoginCubit>().passwordChanged(password),
          hintText: 'Contraseña',
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const LinearProgressIndicator()
            : AppButton.green(
                key: const Key('loginForm_continue_raisedButton'),
                onPressed: state.isValid
                    ? () => context.read<LoginCubit>().logInWithCredentials()
                    : null,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Ingresar')],
                ),
              );
      },
    );
  }
}

class _FingerPrintButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalAuthCubit, LocalAuthState>(
      builder: (context, state) {
        return Visibility(
          visible: !kIsWeb,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
            child: OutlinedButton(
              key: const Key('biometric_Form_continue_raisedButton'),
              onPressed: () {
                log('biometric_Form_continue_raisedButton');
                context.read<LocalAuthCubit>().init();
              },
              style: OutlinedButton.styleFrom(
                shape: const CircleBorder(),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: state.isEnabled
                    ? const CircularProgressIndicator.adaptive()
                    : const Icon(
                        Icons.fingerprint,
                        size: 100.0,
                        color: Colors.black54,
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
