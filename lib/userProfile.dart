import 'package:amplify_api/model_queries.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:learning/home.dart';
import 'dart:io';
import 'package:graphql_flutter/graphql_flutter.dart';
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
                    MaterialPageRoute(builder: (context) => const MyDemoApp()));
              },
            ),
            title: const Center(child: Text('User Profile ')),


          ),
          body: FutureBuilder<Users?>(
            future: queryItem(),
            builder: (context, snapshot) {
              if(snapshot.hasData) {
                return Container();

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
      print("Cognito USer Info$user");
      print("Cognito USer Info${user.userId}");
      print("Cognito USer Info${user.username}");

      final request = ModelQueries.get(Users.classType, user.userId);
      final response = await Amplify.API.query(request: request).response;
      final users = response.data;
      print("User Info$response");
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