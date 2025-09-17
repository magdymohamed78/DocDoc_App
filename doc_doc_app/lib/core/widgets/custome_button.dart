import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: MaterialButton(
        onPressed: onPressed,
        color: Theme.of(context).colorScheme.primary,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
