import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';
import 'package:food_delivery_app/pages/homePage.dart';

class LoginPage extends StatefulWidget {
  final Function? onTap;
  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void loging() {
    /*
    fill out of the authentication
     */

    // Navigation proccess
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor:
          Theme.of(context).colorScheme.background, // ✅ Uses theme background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(height: 25),

            Text(
              'Food Delivery App',
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 25),

            MyTextfield(
              controller: emailController,
              obsecureText: false,
              hintText: 'Email',
              obscureText: false,
            ),

            SizedBox(height: 25),

            MyTextfield(
              controller: passwordController,
              obsecureText: true,
              hintText: 'Password',
              obscureText: true,
            ),

            SizedBox(height: 25),

            MyButton(
              ontap: () {
                loging();
              },
              text: "Sign In",
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member"),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    if (widget.onTap != null) {
                      widget.onTap!();
                    }
                    ;
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
