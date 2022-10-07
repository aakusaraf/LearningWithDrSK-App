// import 'package:amplify_api/model_queries.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:learning/home.dart';
import 'dart:io';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:learning/models/Users.dart';
import 'package:learning/profile.dart';
class MyUserProfileApp extends StatefulWidget {
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
        )
    );
  }
  // Future<Users?> queryItem(Users queriedUsers) async {
  //   try {
  //     final request = ModelQueries.get(Users.classType, queriedUsers.id);
  //     final response = await Amplify.API.query(request: request).response;
  //     final users = response.data;
  //     if (users == null) {
  //       print('errors: ${response.errors}');
  //     }
  //     return users;
  //   }
  //   on ApiException catch (e) {
  //     print('Query failed: $e');
  //     return null;
  //   }
  // }
}