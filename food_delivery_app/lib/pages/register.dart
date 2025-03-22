import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';
import 'package:food_delivery_app/services/auth/auth_services.dart';

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

  void register() {
    AuthServices authServices = AuthServices();
    if (passwordController.text == confirmPasswordController.text) {
      try {
        authServices.signUpWithEmailPassword(
            // Changed from signIn to signUp
            emailController.text,
            passwordController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Error"),
                content: Text(e.toString()),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("OK"),
                  ),
                ],
              );
            });
      }
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Error"),
              content: const Text("Passwords don't match"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("OK"),
                ),
              ],
            );
          });
    }
  }

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_open_rounded,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25),
              Text(
                'Food Delivery App',
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 25),
              MyTextfield(
                controller: emailController,
                obsecureText: false,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 25),
              MyTextfield(
                controller: passwordController,
                obsecureText: true,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 25),
              MyTextfield(
                controller: confirmPasswordController,
                obsecureText: true,
                hintText: 'Confirm Password',
                obscureText: true,
              ),
              const SizedBox(height: 25),
              MyButton(
                ontap: () {
                  register();
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LoginPage()),
                  // );
                },
                text: "Register",
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You already have a account"),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      register();
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
      ),
    );
  }
}
