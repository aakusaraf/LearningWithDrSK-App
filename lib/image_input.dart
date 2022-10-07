import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class myImageApp extends StatefulWidget {
  const myImageApp({Key? key}) : super(key: key);

  @override
  State<myImageApp> createState() => _myImageAppState();
}

class _myImageAppState extends State<myImageApp> {
  late File imageFile;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      // Container(width: 100, height: 100,
      //   decoration:BoxDecoration(
      //       border: Border.all(width: 1,color: Colors.brown)
      // ),
      // child: _storedImage !=null ?
      // Image.file(
      //   _storedImage,
      //   fit: BoxFit.cover,
      //   width: double.infinity,)
      //     : Text('No image found') ,
      // ),
      const SizedBox(width: 10,),
      Expanded(child:TextButton.icon(icon:
      const Icon(Icons.camera),
        onPressed: () {},
        label: const Text('Take Picture'),))

    ],);
  }
  // /// Get from gallery
  // _getFromGallery() async {
  //   // ignore: deprecated_member_use
  //   PickedFile? pickedFile = await ImagePicker().getImage(
  //     source: ImageSource.gallery,
  //     maxWidth: 1800,
  //     maxHeight: 1800,
  //   );
  //   if (pickedFile != null) {
  //     setState(() {
  //       imageFile = File(pickedFile.path);
  //     });
  //   }
  // }

}
