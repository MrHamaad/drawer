import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Practice"),
        ),
        drawer: Drawer(

          shadowColor: Colors.black,
          elevation: 5,
          surfaceTintColor: Colors.green,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.black.withAlpha(20),
                      child: const Icon(Icons.person_2_outlined),
                    ),
                    title: Text("Hamaad Majeed",style: TextStyle(fontWeight: FontWeight.w900),),
                    subtitle: Text("Personal Account"),
                    trailing: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8F0FE),
                        borderRadius: BorderRadius.circular(12),
                        border:Border.all(
                          color: Colors.black.withAlpha(100),
                        )
                      ),
                      child: const Text(
                        'Pro',
                        style: TextStyle(
                          color: Color(0xFF1A73E8), // dark blue text
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black.withAlpha(100),
                  height: 10,
                )
              ],
            ),
          ),
        ),
        body: Center(child: Text("Center Widget"),),
      ),
    );
  }
}
