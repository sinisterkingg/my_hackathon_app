import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Container(
        child: SettingsList(
          sections: [
            SettingsSection(
              title: Text('Common'),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: Icon(Icons.language),
                  title: Text('Language'),
                  value: Text('English'),
                ),
                SettingsTile.navigation(
                  leading: Icon(Icons.invert_colors),
                  title: Text('Inverment'),
                  value: Text('Production'),
                ),
                SettingsTile.navigation(
                  leading: Icon(Icons.palette),
                  title: Text('Platform'),
                  value: Text('Default'),
                ),
              ],
            ),
            SettingsSection(
              title: Text('Account'),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: Icon(Icons.phone),
                  title: Text('Phone Number'),
                  value: Text('0123456789'),
                ),
                SettingsTile.navigation(
                  leading: Icon(Icons.email),
                  title: Text('Email ID'),
                  value: Text('abc@gmail.com'),
                ),
                SettingsTile.navigation(
                  leading: Icon(Icons.logout),
                  title: Text('Sign Out'),
                  value: Text('Do you want to exit this app..?'),
                ),
              ],
            ),
            SettingsSection(
              title: Text('Account'),
              tiles: <SettingsTile>[
                SettingsTile.switchTile(
                  onToggle: (value) {},
                  initialValue: true,
                  leading: Icon(Icons.fingerprint),
                  title: Text('Use Fingle Print'),
                ),
                SettingsTile.switchTile(
                  onToggle: (value) {},
                  initialValue: false,
                  leading: Icon(Icons.lock),
                  title: Text('Change Password'),
                ),
                SettingsTile.switchTile(
                  onToggle: (value) {},
                  initialValue: true,
                  leading: Icon(Icons.notifications),
                  title: Text('Enable Notification'),
                ),
                SettingsTile.switchTile(
                  onToggle: (value) {},
                  initialValue: false,
                  leading: Icon(Icons.format_paint),
                  title: Text('Enable Custom Theme'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
