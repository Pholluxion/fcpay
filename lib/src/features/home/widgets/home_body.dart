import 'package:flutter/material.dart';
import 'package:fcpay/src/features/home/cubit/cubit.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
