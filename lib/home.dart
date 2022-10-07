import 'package:flutter/material.dart';
import 'package:learning/profile.dart';
import 'package:learning/userProfile.dart';

class MyDemoApp extends StatelessWidget {
  const MyDemoApp({super.key});

  static const appTitle = 'Learning with Dr.SK Srivastava';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('Home Page!'),
      ),
        drawer:Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                // decoration: BoxDecoration(color: const Color(0xff764abc)),
                accountName: Text(
                  "Aakruti Saraf",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "aakruti@aavrti.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: FlutterLogo(),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                ),
                title: const Text ('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                ),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyUserProfileApp()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.list,
                ),
                title: const Text('Categories'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(
                  Icons.settings,
                ),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),


              const AboutListTile( // <-- SEE HERE
                icon: Icon(
                  Icons.info,
                ),
                child: Text('App Info'),
                applicationIcon: Icon(
                  Icons.local_play,
                ),
                applicationName: 'Learing with Dr.SK Srivastava',
                applicationVersion: '1.0.0',
              ),
            ],
          ),
        )
    );
  }
}