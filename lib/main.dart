import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
// import 'package:learning/home.dart';
// import 'package:learning/profile.dart';
import 'package:learning/userProfile.dart';
// import 'package:path/path.dart';
import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static const appTitle = 'Learning with Dr.SK Srivastava';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AmplifyDataStore datastorePlugin;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }
//final AmplifyDataStore _amplifyDataStore = AmplifyDataStore(model : )
  void _configureAmplify() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.addPlugin(AmplifyAPI(modelProvider: ModelProvider.instance));
      datastorePlugin = AmplifyDataStore(
        modelProvider: ModelProvider.instance,
        errorHandler: ((error) =>
        {print("Custom ErrorHandler received: $error")}),
      );
      await Amplify.addPlugin(datastorePlugin);

      await Amplify.configure(amplifyconfig);
      print('Successfully configured');
    } on Exception catch (e) {
      print('Error configuring Amplify: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: const MyMaterialApp()
      ),
    );
  }
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(MyApp.appTitle)),
        // horizontal scroll listView
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                    itemExtent: 150,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(5.0),
                      color: Colors.blue,
                        alignment: Alignment.center,
                        child: Text('List item $index'),
                    ),
                    itemCount: 20),
              ),
            ),

            // vertical scroll gridView
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisExtent: 200.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    color: Colors.teal,
                    child: Text('grid item $index'),
                  );
                },
                childCount: 25,
              ),
            )
          ],
        ),


        // User profile Drawer
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
                      MaterialPageRoute(builder: (context) => const MyUserProfileApp()));
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
                applicationIcon: Icon(
                  Icons.local_play,
                ),
                applicationName: 'Learning with Dr.SK Srivastava',
                applicationVersion: '1.0.0',
                child: Text('App Info'),
              ),
            ],
          ),
        )
    );
  }
  Widget buildCard(int index) =>Container(
    color: Colors.blue,
    width: 280,
    height: 150,
    child: Center(child: Text('$index'),),
  );

}