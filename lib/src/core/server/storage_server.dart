import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class StorageServer {

  static final storage = FirebaseStorage.instance;

  static Future<String> upload({required String path, required File file})async{
    Reference reference = storage.ref(path).child("${DateTime.now().toIso8601String()}${file.path.substring(file.path.lastIndexOf('.'))}");
    UploadTask task = reference.putFile(file);
    await task.whenComplete((){});
    return reference.getDownloadURL();
  }

  static Future<(List<String>,List<String>)> getData({required String path})async{
    List<String> nameList = [];
    List<String> linkList = [];
    final Reference reference = storage.ref(path);
    final ListResult listResult = await reference.listAll();
    for (var e in listResult.items) {
      nameList.add(e.name);
      linkList.add(await e.getDownloadURL());
    }
    log("nameList: ${nameList.first}");
    log("linkList: ${linkList.first}");
    return (nameList,linkList);
  }

  static Future<void> delete({required String imageUrl})async{
    final Reference ref = storage.refFromURL(imageUrl);
    await ref.delete();
  }
}