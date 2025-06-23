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
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 5,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.yellow,
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
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Left 5 days of free trail. Upgrade to for more features ",style: TextStyle(fontSize: 16),),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsetsGeometry.all(20),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          icon: Icon(Icons.thunderstorm_outlined),
                          label: Text("Upgrade to Pro",style: TextStyle(fontWeight: FontWeight.w900),),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black.withAlpha(100),
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.message_sharp),
                        title: Text("Messages",style: TextStyle(fontWeight: FontWeight.w600),),
                        trailing: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                              border:Border.all(
                                color: Colors.black.withAlpha(100),
                              )
                          ),
                          child: const Text(
                            '+8',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.analytics_rounded),
                        title: Text("Analytics",style: TextStyle(fontWeight: FontWeight.w600),),
                      ),
                      ListTile(),
                    ],
                  ),
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
