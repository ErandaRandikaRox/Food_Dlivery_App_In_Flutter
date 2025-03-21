import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery_app/pages/homePage.dart';
import 'package:food_delivery_app/services/auth/loging_or_register.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              // user is logged in
              return Homepage();
            } else {
              // user is not logged in
              return LoginOrRegister();
            }
          }
          // Default case: show loading while waiting for auth state
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  
}