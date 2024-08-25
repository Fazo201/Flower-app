import 'package:firebase_core/firebase_core.dart';
import 'package:flower_app/firebase_options.dart';
import 'package:flutter/material.dart';

Future<void> setup()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
}