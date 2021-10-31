import 'package:flutter/material.dart';

import 'create_account_complete_view.dart';
import 'custom_color.dart';
import 'gradient_button.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 5,
                      color: greenColor,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 5,
                      color: greyColor,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 5,
                      color: greyColor,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 5,
                      color: greyColor,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Setting up your \ncompanion',
                style: TextStyle(fontSize: 22),
              ),
              const Spacer(),
              const Center(
                  child: Text(
                'Name your robot',
                style: TextStyle(fontSize: 20),
              )),
              const SizedBox(
                height: 45,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Type a name here...',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade400, fontSize: 18)),
              ),
              const SizedBox(
                height: 19,
              ),
              Center(
                child: GradientButton(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const CreateAccountCompletionView())),
                  label: 'Next',
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

