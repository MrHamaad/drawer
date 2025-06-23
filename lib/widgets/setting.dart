import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text("Settings",
            // style: Theme.of(context).textTheme.headline5
        ),
        SizedBox(height: 16),
        SwitchListTile(
          value: true,
          onChanged: (_) {},
          title: Text("Enable Notifications"),
          secondary: Icon(Icons.notifications),
        ),
        SwitchListTile(
          value: false,
          onChanged: (_) {},
          title: Text("Dark Mode"),
          secondary: Icon(Icons.dark_mode),
        ),
        ListTile(
          leading: Icon(Icons.language),
          title: Text("Language"),
          subtitle: Text("English (US)"),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),
      ],
    );
  }
}