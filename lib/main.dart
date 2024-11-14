import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: Scaffold(
          body: GradientContainer(
            Color.fromARGB(255, 223, 96, 234),
            Color.fromARGB(255, 141, 37, 37),
          ),
        ),
      ),
    ),
  );
}
