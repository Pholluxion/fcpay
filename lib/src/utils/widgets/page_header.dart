import 'package:fcpay/src/ui/ui.dart';
import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: UITextStyle.headline3.copyWith(
              fontWeight: FontWeight.w700,
              color: const Color(
                0xff545454,
              ),
            ),
          ),
          Text(description),
        ],
      ),
    );
  }
}
