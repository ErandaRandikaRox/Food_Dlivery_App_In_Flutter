import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:food_delivery_app/themes/Theme_provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Setting Page")),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(left: 25, right: 25, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark Mode", style: TextStyle(fontSize: 18)),
                Consumer<ThemeProvider>(
                  // ✅ Use Consumer to rebuild UI when state changes
                  builder: (context, themeProvider, child) {
                    return CupertinoSwitch(
                      trackColor:
                          Colors.grey.shade300, // ✅ Light mode track color
                      activeColor: Theme.of(context).colorScheme.primary,
                      value: themeProvider.isDarkMode, // ✅ Correctly updates UI
                      onChanged: (value) => themeProvider.toggleTheme(),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
