import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          // Notifications Section
          ListTile(
            title: const Text('Enable Notifications'),
            trailing: Switch(
              value: _notificationsEnabled,
              onChanged: (value) {
                setState(() => _notificationsEnabled = value);
              },
            ),
          ),
          const Divider(),
          // Dark Mode Section
          ListTile(
            title: const Text('Dark Mode'),
            trailing: Switch(
              value: _darkModeEnabled,
              onChanged: (value) {
                setState(() => _darkModeEnabled = value);
              },
            ),
          ),
          const Divider(),
          // About Section
          ListTile(
            title: const Text('About'),
            onTap: () {},
          ),
          const Divider(),
          // Privacy Policy
          ListTile(
            title: const Text('Privacy Policy'),
            onTap: () {},
          ),
          const Divider(),
          // Terms of Service
          ListTile(
            title: const Text('Terms of Service'),
            onTap: () {},
          ),
          const Divider(),
          // Sign Out
          ListTile(
            title: const Text('Sign Out'),
            textColor: Colors.red,
            onTap: () {
              // TODO: Implement sign out
            },
          ),
        ],
      ),
    );
  }
}
