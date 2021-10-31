import 'package:flutter/material.dart';

import 'custom_color.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.onTap,
    required this.label,
    this.hasNext = true,
  }) : super(key: key);

  final VoidCallback onTap;
  final String label;
  final bool hasNext;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                colors: greenGradientColor,
                begin: Alignment.centerRight,
                end: Alignment.centerLeft)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 22),
            ),
            hasNext
                ? const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
