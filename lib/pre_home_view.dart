import 'package:flutter/material.dart';
import 'package:robnex/custom_color.dart';

import 'gradient_button.dart';
import 'home_view.dart';

class PreHomeView extends StatelessWidget {
  const PreHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Congratulations!',
                  style: TextStyle(fontSize: 30, color: greenColor),
                ),
                Text(
                  'You are one the first\n1,000 people to own a\nROBNEX Companion Robot.',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/robo.png',
            height: 365,
          ),
          const Spacer(),
          const Text(
            'Let’s get you all setup!',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 40,
          ),
          GradientButton(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => const HomeView())),
            label: 'Begin',
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
