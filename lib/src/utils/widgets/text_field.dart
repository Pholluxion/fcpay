import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.initialValue,
    this.autoFillHints,
    this.controller,
    this.inputFormatters,
    this.autocorrect = true,
    this.readOnly = false,
    this.hintText,
    this.errorText,
    this.prefix,
    this.suffix,
    this.keyboardType,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
  });

  final String? initialValue;

  final Iterable<String>? autoFillHints;

  final TextEditingController? controller;

  final List<TextInputFormatter>? inputFormatters;

  final bool autocorrect;

  final bool readOnly;

  final String? hintText;

  final String? errorText;

  final Widget? prefix;

  final Widget? suffix;

  final TextInputType? keyboardType;

  final ValueChanged<String>? onChanged;

  final ValueChanged<String>? onSubmitted;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 80),
          child: TextFormField(
            key: key,
            initialValue: initialValue,
            controller: controller,
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            autocorrect: autocorrect,
            readOnly: readOnly,
            autofillHints: autoFillHints,
            cursorColor: const Color(0xFF43A047),
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
            onFieldSubmitted: onSubmitted,
            decoration: InputDecoration(
              hintText: hintText,
              errorText: errorText,
              prefixIcon: prefix,
              suffixIcon: suffix,
              suffixIconConstraints: const BoxConstraints.tightFor(
                width: 32,
                height: 32,
              ),
              prefixIconConstraints: const BoxConstraints.tightFor(
                width: 48,
              ),
            ),
            onChanged: onChanged,
            onTap: onTap,
          ),
        ),
      ],
    );
  }
}
