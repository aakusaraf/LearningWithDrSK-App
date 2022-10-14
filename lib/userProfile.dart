import 'package:amplify_api/model_queries.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:learning/main.dart';
import 'package:learning/home.dart';
// import 'dart:io';
// import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:learning/models/Users.dart';
import 'package:learning/profile.dart';

class MyUserProfileApp extends StatefulWidget {
  const MyUserProfileApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyUserProfileApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyProfileApp()));
                },
                child: const Text('Edit'),
              )

            ],
            leading: IconButton(
              icon: const Icon(
                  Icons.arrow_back, color: Colors.white, size: 28.0),
              onPressed: () {
                //statements
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
            ),
            title: const Center(child: Text('User Profile ')),


          ),
          body: FutureBuilder<Users?>(
            future: queryItem(),
            builder: (context, snapshot) {
              final name = snapshot.data?.userName;
              final email= snapshot.data?.email;
              final mobile= snapshot.data?.mobile;
              if(snapshot.hasData) {
                return Card(
                    child: Center(
                      child: Text(
                      '$name  $email  $mobile',
                      // '$email',
                      style: TextStyle(fontSize: 18),
                    ),
                    )
                );

              //     Container(
              //   child: Center(
              //   child: Text(
              //   '$data',
              //   style: TextStyle(fontSize: 18),
              // ),
              // )
              //   );

              } else {
                return const CircularProgressIndicator();

              }},
          ),
        )
    );
  }

  Future<AuthUser> getCurrentUser() async {
    final user = await Amplify.Auth.getCurrentUser();
    return user;
  }

  Future<Users?> queryItem() async {
    try {
      final user = await getCurrentUser();
      print("Cognito USer Info $user");
      print("Cognito USer ID: ${user.userId}");
      print("Cognito USer Name: ${user.username}");

      final request = ModelQueries.get(Users.classType, user.userId);
      final response = await Amplify.API.query(request: request).response;
      final users = response.data;
      print("User response $response");
      if (users == null) {
        print('errors: ${response.errors}');
      }
      return users;
    }
    on ApiException catch (e) {
      print('Query failed: $e');
      return null;
    }on  Exception catch (e) {
    print('Query failed: $e');
    return null;
    }
  }
}