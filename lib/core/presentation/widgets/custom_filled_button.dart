// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

import '../../core.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.loading = false,
    this.disabled = false,
  });

  final VoidCallback onPressed;
  final bool loading;
  final String text;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: const Dimension(7).height,
      width: double.infinity,
      child: FilledButton(
        style: ButtonStyle(
          shadowColor: MaterialStatePropertyAll<Color>(
            Colors.black.withOpacity(0.25),
          ),
          backgroundColor: MaterialStatePropertyAll<Color>(
            disabled ? Color.fromARGB(255, 207, 207, 207) : Color(0xFF0D8536),
          ),
          shape: const MaterialStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ),
        onPressed: disabled ? null : onPressed,
        child: loading
            ? const CircularProgressIndicator(
                strokeWidth: 1.0,
                color: Colors.white,
              )
            : Text(text.toUpperCase()),
      ),
    );
  }
}
