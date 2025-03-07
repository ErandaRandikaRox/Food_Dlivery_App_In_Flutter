import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';
import 'package:food_delivery_app/pages/loging_page.dart';

class Myregister extends StatefulWidget {
  final Function? onTap;
  const Myregister({super.key, this.onTap});

  @override
  State<Myregister> createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Page"),
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

            MyTextfield(
              controller: confirmPasswordController,
              obsecureText: true,
              hintText: 'Confirm Password',
              obscureText: true,
            ),
            SizedBox(height: 25),

            MyButton(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              text: "Register",
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You already have a account"),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    if (widget.onTap != null) {
                      widget.onTap!();
                    }
                  },
                  child: Text(
                    "Loging",
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
