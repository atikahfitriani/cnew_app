import 'dart:convert';

import 'package:news_app/models/ekonomi_news_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EkonomiNewsProvider with ChangeNotifier {
  List<EkonomiUpdateModel> _ekonomiList = [];
  bool _isLoading = false;

  List<EkonomiUpdateModel> get ekonomiList => _ekonomiList;
  bool get isLoading => _isLoading;

  Future<void> fetchEkonomiNews() async {
    _isLoading = true;
    notifyListeners();

    final url =
        Uri.parse('https://api-berita-indonesia.vercel.app/antara/ekonomi/');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)['data'];
        _ekonomiList = [EkonomiUpdateModel.fromJson(data)];
      }
    } catch (error) {
      rethrow;
    }

    _isLoading = false;
    notifyListeners();
  }
}
