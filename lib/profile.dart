import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learning/home.dart';
import 'package:learning/image.dart';
import 'package:learning/login.dart';
import 'package:learning/userProfile.dart';
import 'package:path/path.dart';
import 'package:camera/camera.dart';
import 'dart:async';
import 'dart:io';
import 'package:learning/image_input.dart';

class MyProfileApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyProfileApp> {
  final ImagePicker _picker = ImagePicker();
  dynamic _pickImageError;

  List<XFile>? _imageFileList;

  void _setImageFileListFromFile(XFile? value) {
    _imageFileList = value == null ? null : <XFile>[value];
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // actions: <Widget>[
          //   TextButton(
          //     style: ButtonStyle(
          //       foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          //     ),
          //     onPressed: () {
          //       Navigator.push(context,MaterialPageRoute(builder: (context)=> const myImageApp()));
          //     },
          //     child: const Text('Edit'),
          //   )
          //
          // ],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28.0),
            onPressed: () {
              //statements
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyUserProfileApp()));
            },
          ),
          title: const Center(child: Text('Profile Page')),
        ),
        body: Column(children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/logo.jpg'),
              ),
              Positioned(
                  bottom: 20.0,
                  right: 20.0,
                  child: IconButton(
                    icon: const Icon(Icons.camera_alt),
                    color: Colors.blueGrey,
                    onPressed: () {
                      _onImageButtonPressed();
                    },
                  )
                  )
            ],
          ),
          Container(
              padding: const EdgeInsets.all(10),
              child: Column(children: const <Widget>[
                TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  helperText: 'Name cannot be empty.',
                )),
                SizedBox(height: 20),
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        helperText: 'Email cannot be empty.')),
                SizedBox(height: 20),
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mobile Number',
                        helperText: 'Mobile Number cannot be empty.')),
                SizedBox(height: 20),
              ])),
        ]),
      ),
    );
  }

  Future<void> _onImageButtonPressed() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: null,
        maxHeight: null,
        imageQuality: null,
      );
      setState(() {
        _setImageFileListFromFile(pickedFile);
      });
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
  }
}
