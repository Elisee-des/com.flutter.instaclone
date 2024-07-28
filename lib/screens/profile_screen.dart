import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instaclone/data/firebase_services/firebase_auth.dart';
import 'package:instaclone/data/firebase_services/firestor.dart';
import 'package:instaclone/widgets/button_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            textAlign: TextAlign.center,
            'Felicitaion, vous êtes connecter avec succès !!!',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          ButtonWidget(
              onTab: () async {
                // await AuthServices().signOut();
                await Authentication().signOut();
              },
              text: "Se deconnecter"),
        ],
      ),
    ));
  }
}
