import 'package:flutter/material.dart';

import '../../ui/ui.dart';

class AppPasswordTextField extends StatefulWidget {
  const AppPasswordTextField({
    super.key,
    this.controller,
    this.hintText,
    this.suffix,
    this.readOnly,
    this.onChanged,
  });

  final TextEditingController? controller;

  final String? hintText;

  final Widget? suffix;

  final ValueChanged<String>? onChanged;

  final bool? readOnly;

  @override
  State<AppPasswordTextField> createState() => _AppPasswordTextFieldState();
}

class _AppPasswordTextFieldState extends State<AppPasswordTextField> {
  late ValueNotifier<bool> showPassword;

  @override
  void initState() {
    showPassword = ValueNotifier<bool>(true);
    super.initState();
  }

  @override
  void dispose() {
    showPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: showPassword,
      builder: (context, value, child) => AppTextField(
        obscureText: value,
        controller: widget.controller,
        hintText: widget.hintText,
        keyboardType: TextInputType.visiblePassword,
        autoFillHints: const [AutofillHints.password],
        autocorrect: false,
        prefix: Padding(
          padding: const EdgeInsets.only(
            left: AppSpacing.sm,
            right: AppSpacing.sm,
          ),
          child: value
              ? IconButton(
                  onPressed: () => showPassword.value = !showPassword.value,
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: AppColors.mediumEmphasisSurface,
                    size: 24,
                  ),
                )
              : IconButton(
                  onPressed: () => showPassword.value = !showPassword.value,
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: AppColors.mediumEmphasisSurface,
                    size: 24,
                  ),
                ),
        ),
        readOnly: widget.readOnly ?? false,
        onChanged: widget.onChanged,
        suffix: widget.suffix,
      ),
    );
  }
}
