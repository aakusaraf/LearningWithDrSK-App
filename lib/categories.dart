import 'package:amplify_api/model_queries.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:learning/main.dart';
// import 'package:learning/home.dart';
import 'package:learning/models/Categories.dart';
// import 'dart:io';
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:learning/models/Users.dart';
// import 'package:learning/profile.dart';

class MyCategoryApp extends StatefulWidget {
  const MyCategoryApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyCategoryApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28.0),
            onPressed: () {
              //statements
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyApp()));
            },
          ),
          title: const Center(child: Text('Categories')),
        ),
        body: FutureBuilder<List<Categories?>>(
          future: queryListItems(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data);
             return GridView.builder(
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                 ),
                 itemCount: snapshot.data?.length,
                 itemBuilder: (BuildContext context, int index) {
                   var mCatName = snapshot.data![index]?.categoryName;
                   mCatName ??= "";
                   var mCatIcon = snapshot.data![index]?.icon;
                   mCatIcon ??= "";
                   return Image.network(mCatIcon[index]);
                   //   Card(
                   //   color: Colors.grey,
                   //   child: Center(
                   //     child: Text(mCatName),
                   //   ),
                   // );
                     //

                 }
             );

              // ListView.builder(
           //        itemCount: snapshot.data?.length,
           //        itemBuilder: (BuildContext context, int index) {
           //          var mCatName = snapshot.data![index]?.categoryName;
           //          mCatName ??= "";
           //          return ListTile(
           //              title: Text(mCatName)
           //          );
           //        });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ));
    }

  Future<AuthUser> getCurrentUser() async {
    final user = await Amplify.Auth.getCurrentUser();
    return user;
  }

  Future<List<Categories?>> queryListItems() async {
    try {
      final request = ModelQueries.list(Categories.classType);
      final response = await Amplify.API.query(request: request).response;

      final category = response.data?.items;
      if (category == null) {
        print('errors: ${response.errors}');
        print("Category response $response");

        return <Categories?>[];
      }
      return category;
    } on ApiException catch (e) {
      print('Query failed: $e');
    }
    return <Categories?>[];
  }
}

const limit = 100;

Future<List<Categories?>> queryPaginatedListItems() async {
  final firstRequest =
      ModelQueries.list<Categories>(Categories.classType, limit: limit);
  final firstResult = await Amplify.API.query(request: firstRequest).response;
  final firstPageData = firstResult.data;

  // Indicates there are > 100 todos and we can get the request for the next set.
  if (firstPageData?.hasNextResult ?? false) {
    final secondRequest = firstPageData!.requestForNextResult;
    final secondResult =
        await Amplify.API.query(request: secondRequest!).response;
    return secondResult.data?.items ?? <Categories?>[];
  } else {
    return firstPageData?.items ?? <Categories?>[];
  }
}
