// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fcpay/src/features/login/login.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoginBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => LoginCubit(),
          child: MaterialApp(home: LoginBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
