import 'package:flutter/material.dart';

import 'package:food_delivery_app/pages/loging_page.dart';
import 'package:food_delivery_app/pages/register.dart';

class LoginOrRegister extends StatefulWidget {
  // ✅ Fixed class name
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true; // ✅ Fixed spelling

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage; // ✅ Toggle logic fixed
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages); // ✅ Ensure LoginPage accepts onTap
    } else {
      return Myregister(
        onTap: togglePages,
      ); // ✅ Ensure MyRegister accepts onTap
    }
  }
}
