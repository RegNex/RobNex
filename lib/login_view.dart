import 'package:flutter/material.dart';

import 'create_account_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => const CreateAccountView()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SizedBox(
            width: 196,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: 75,
                  width: 196,
                ),
                const Text(
                  'Next level\ncomapnion robots',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login_bg.png'), fit: BoxFit.fill)),
      ),
    );
  }
}
