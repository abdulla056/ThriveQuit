import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class ForgottenPasswordPage extends StatelessWidget {
  const ForgottenPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
return ForgotPasswordScreen(
  headerBuilder: (context, constraints, shrinkOffset) {
    return Padding(
      padding: const EdgeInsets.all(20).copyWith(top: 40),
      child: Icon(
        Icons.lock,
        color: Colors.blue,
        size: constraints.maxWidth / 4 * (1 - shrinkOffset),
        ),
      );
    },
    );
  }
}