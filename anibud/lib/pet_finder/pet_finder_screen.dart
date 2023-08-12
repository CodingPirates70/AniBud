import 'package:flutter/material.dart';

class PetFindScreen extends StatefulWidget {
  const PetFindScreen({super.key});

  @override
  State<PetFindScreen> createState() => _PetFindScreenState();
}

class _PetFindScreenState extends State<PetFindScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: const Center(
            child: Text("hello", style: TextStyle(color: Colors.white))),
      ),
    );
  }
}
