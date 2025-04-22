import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // 👈 This goes back
          },
        ),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text("Dark Mode"),
            value: themeProvider.isDarkMode,
            onChanged: themeProvider.toggleTheme,
            secondary: Icon(Icons.brightness_6),
          ),
        ],
      ),
    );
  }
}
