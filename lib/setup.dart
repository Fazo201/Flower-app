import 'package:firebase_core/firebase_core.dart';
import 'package:flower_app/firebase_options.dart';
import 'package:flower_app/src/core/server/db_service.dart';
import 'package:flutter/material.dart';

bool isAdmin = false;
String? name;
String? phoneNumber;

Future<void> setup()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  name = await DBService.loadData(DBKey.name);  
  phoneNumber = await DBService.loadData(DBKey.phoneNumber);
}