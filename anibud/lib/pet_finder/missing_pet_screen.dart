import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
import '../global/global.dart';

class PetMissingScreen extends StatefulWidget {
  const PetMissingScreen({super.key});

  @override
  State<PetMissingScreen> createState() => _PetMissingScreenState();
}

class _PetMissingScreenState extends State<PetMissingScreen> {
  bool loading = false;

  int missing_counter = 0;

  Future<void> uploadMissingImage(String inputSource) async {
    final picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(
        source:
            inputSource == 'camera' ? ImageSource.camera : ImageSource.gallery);

    if (pickedImage == null) {
      // ignore: avoid_returning_null_for_void
      return null;
    } else {
      missing_counter++;
    }

    String fileName = pickedImage.name;
    File imageFile = File(pickedImage.path);

    try {
      setState(() {
        loading = true;
      });
      await firebaseStorage.ref(fileName).putFile(imageFile);
      setState(() {
        loading = false;
      });
      final URL = await firebaseStorage.ref(fileName).getDownloadURL();

      var missing_images = firestore.collection('missingImages');
      await missing_images.doc("missingImages$missing_counter").set({
        'missingImages$missing_counter': [3622.96855, 88.42959, URL],
      });
      Fluttertoast.showToast(msg: "Successfully Uploaded");
    } on FirebaseException catch (e) {
      print(e);
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text(
                    "Upload Image of your missing pet",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () async {
                          uploadMissingImage('camera');
                        },
                        icon: const Icon(Icons.camera_alt_outlined),
                        label: const Text("Camera"),
                      ),
                      ElevatedButton.icon(
                        onPressed: () async {
                          uploadMissingImage('gallery');
                        },
                        icon: const Icon(Icons.library_add_outlined),
                        label: const Text("Gallery"),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
