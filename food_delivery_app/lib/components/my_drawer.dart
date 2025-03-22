import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';
import 'package:food_delivery_app/pages/setting_page.dart';
import 'package:food_delivery_app/services/auth/auth_services.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logOut() async {
    final authservices = AuthServices();
    await authservices.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Icon(
                Icons.lock_open_rounded,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            MyDrawerTile(
              icon: Icons.home,
              text: "H O M E",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            MyDrawerTile(
              icon: Icons.settings,
              text: "S E T T I N G",
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingPage()),
                );
              },
            ),
            const Spacer(),
            MyDrawerTile(
              icon: Icons.logout,
              text: "L O G O U T",
              onTap: () {
                logOut();
              },
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
