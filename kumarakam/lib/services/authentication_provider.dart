import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../secrets/api.dart';

class AuthProvider with ChangeNotifier {
  String? _token;

  String? get token => _token;

  Future<bool> login(String username, String password) async {
    final url = '${baseUrl}${endpoint}'; 

   
    final request = http.MultipartRequest('POST', Uri.parse(url))
      ..fields['username'] = username 
      ..fields['password'] = password; 

    
    final response = await request.send();

   
    if (response.statusCode == 200) {
      final responseData = await response.stream.toBytes();
      final responseString = String.fromCharCodes(responseData);
      final data = json.decode(responseString);
      
      _token = data['token']; 
      notifyListeners();

    
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('auth_token', _token!);
      return true;
    } else {
      print('Login failed: ${response.statusCode} ${response.reasonPhrase}');
      return false; 
    }
  }

  Future<void> fetchToken() async {
    final prefs = await SharedPreferences.getInstance();
    _token = prefs.getString('auth_token'); 
    notifyListeners();
  }

  void logout() async {
    _token = null; 
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token'); 
    notifyListeners();
  }
}
