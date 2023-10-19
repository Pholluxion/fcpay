import 'package:fcpay/src/features/home/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:fcpay/src/features/home/widgets/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getAccounts();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeView());
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeBody();
  }
}
