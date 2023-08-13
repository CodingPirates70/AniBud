import 'dart:io';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import '../global/global.dart';

class PetFoundScreen extends StatefulWidget {
  const PetFoundScreen({super.key});

  @override
  State<PetFoundScreen> createState() => _PetFoundScreenState();
}

class _PetFoundScreenState extends State<PetFoundScreen> {
  bool loading = false;
  int founded_counter = 0;

  // Future<void> updateCounter() async {
  //   await firestore
  //       .collection("founded_conter")
  //       .doc("counter")
  //       .set({"counts": founded_counter});
  // }

  // Future<void> getCounter() async {
  //   var snapshot =
  //       (firestore.collection("founded_counter").doc("counter").snapshots());
  //   founded_counter = snapshot as int?;
  //   print(founded_counter);
  // }

  Future<void> uploadFoundedImage(String inputSource) async {
    final picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(
        source:
            inputSource == 'camera' ? ImageSource.camera : ImageSource.gallery);

    if (pickedImage == null) {
      // ignore: avoid_returning_null_for_void
      return null;
    } else {
      founded_counter++;
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

      var founded_images = firestore.collection('foundedImages');
      await founded_images.doc("foundedImages$founded_counter").set({
        'foundedImages$founded_counter': [22.96855, 88.42959, URL],
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
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    "Upload Image of a missing pet found",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () async {
                          uploadFoundedImage('camera');
                        },
                        icon: const Icon(Icons.camera_alt_outlined),
                        label: const Text("Camera"),
                      ),
                      ElevatedButton.icon(
                        onPressed: () async {
                          uploadFoundedImage('gallery');
                        },
                        icon: const Icon(Icons.library_add_outlined),
                        label: const Text("Gallery"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
