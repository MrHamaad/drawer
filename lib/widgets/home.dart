import 'package:flutter/material.dart';
class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text("Welcome Home!",
            // style: Theme.of(context).textTheme.headline5
        ),
        SizedBox(height: 16),
        Card(
          elevation: 4,
          child: ListTile(
            leading: Icon(Icons.explore, color: Colors.indigo),
            title: Text("Explore Features"),
            subtitle: Text("Discover what's new in the app."),
          ),
        ),
        Card(
          elevation: 4,
          child: ListTile(
            leading: Icon(Icons.star, color: Colors.amber),
            title: Text("Recommended"),
            subtitle: Text("Check out the top-rated features."),
          ),
        ),
      ],
    );
  }
}