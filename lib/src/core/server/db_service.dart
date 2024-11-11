import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum DBKey{
  name, phoneNumber,
}

@immutable
sealed class DBService  {
  
  ///  store data
  static Future<bool> addData(DBKey key, String msg) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key.name, msg);
  }

  ///  load data
  static Future<String?> loadData(DBKey key)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key.name);
  }

  ///  remove data
  static Future<bool> removeData({required DBKey key})async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(key.name);
  }
}