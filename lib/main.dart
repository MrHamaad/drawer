import 'package:flutter/material.dart';
import 'package:practice/widgets/about.dart';
import 'package:practice/widgets/home.dart';
import 'package:practice/widgets/setting.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> globalKey=GlobalKey<ScaffoldState>();
  int index=0;
  final List<Widget> pages = [
    HomeWidget(),
    AboutWidget(),
    SettingsWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: globalKey,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Bottom Navigation and Menu Drawer",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          leading: IconButton(
            onPressed: (){
            globalKey.currentState?.openDrawer();
            },
            style: IconButton.styleFrom(
              foregroundColor: Colors.white
            ),
            icon: Icon(Icons.menu),
          ),
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
                  padding: const EdgeInsets.symmetric(vertical:10),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.yellow,
                      child: const Icon(Icons.person_2_outlined),
                    ),
                    title: Text("Hamaad Majeed",style: TextStyle(fontWeight: FontWeight.w900),),
                    subtitle: Text("Flutter Developer"),
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
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
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
                  padding: const EdgeInsets.symmetric(vertical: 10,),
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
                      ListTile(
                        leading: Icon(Icons.api_rounded),
                        title: Text("Api Dashboard",style: TextStyle(fontWeight: FontWeight.w600),),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black.withAlpha(100),
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.cyclone),
                        title: Text("Connections",style: TextStyle(fontWeight: FontWeight.w600),),
                        trailing: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.pink.withAlpha(20),
                              borderRadius: BorderRadius.circular(5),
                              border:Border.all(
                                color: Colors.black.withAlpha(100),
                              )
                          ),
                          child: const Text(
                            'New',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black.withAlpha(100),
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.person_4),
                        title: Text("Account",style: TextStyle(fontWeight: FontWeight.w600),),
                      ),
                      ListTile(
                        leading: Icon(Icons.edit_rounded),
                        title: Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.w600),),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black.withAlpha(100),
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.dark_mode_rounded),
                        title: Text("Dark Mode",style: TextStyle(fontWeight: FontWeight.w600),),
                        trailing: Switch(value: false, onChanged: (value){}),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black.withAlpha(100),
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.logout_rounded),
                        title: Text("Logout",style: TextStyle(fontWeight: FontWeight.w600),),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: pages[index],
        bottomNavigationBar:BottomNavigationBar(
          onTap: (value){
            setState(() {
              index=value;
            });
          },
            currentIndex: index,
            items:[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.info_rounded),
                  label: "About"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Setting"
              ),
            ]
        )
      ),
    );
  }
}
