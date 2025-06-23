import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About This App",
              // style: Theme.of(context).textTheme.headline5
          ),
          SizedBox(height: 10),
          Text(
            "This app is proudly developed by Hamaad Majeed, a dedicated Computer Science student "
                "and Flutter enthusiast. It demonstrates best practices in mobile UI/UX, navigation, and code organization.\n\n"
                "The goal is to build scalable, maintainable apps using Flutter, while showcasing real-world development techniques.",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.developer_mode),
            title: Text("Version 1.0.0"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Developer"),
            subtitle: Text("Hamaad Majeed"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Contact"),
            subtitle: Text("hamaad@example.com"),
          ),
        ],
      ),
    );
  }
}