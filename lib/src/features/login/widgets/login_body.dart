import 'package:flutter/material.dart';
import 'package:fcpay/src/features/login/cubit/cubit.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
