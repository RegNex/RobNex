import 'package:flutter/material.dart';

import 'gradient_button.dart';
import 'pre_home_view.dart';

class CreateAccountCompletionView extends StatelessWidget {
  const CreateAccountCompletionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Spacer(),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Setup Complete!',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text('Try summoning\nyour robot now.',
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade400)),
                  const SizedBox(
                    height: 46,
                  ),
                  GradientButton(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const PreHomeView())),
                    label: 'Ready',
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
