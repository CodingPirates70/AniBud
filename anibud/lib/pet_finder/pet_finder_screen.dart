import 'package:flutter/material.dart';
import 'package:anibud_ui/pet_finder/missing_pet_screen.dart';
import 'package:anibud_ui/pet_finder/found_pet_screen.dart';

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PetMissingScreen(),
                    ),
                  );
                },
                child: const Text("Upload your missing Pet"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PetFoundScreen(),
                    ),
                  );
                },
                child: const Text("Upload the Pet found"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
