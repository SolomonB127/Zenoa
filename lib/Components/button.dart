import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  const NextButton({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
      ),
    );
  }
}
