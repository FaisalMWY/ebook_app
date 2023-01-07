import 'dart:convert';

import 'package:ebook_app/test/book.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BooksProvider with ChangeNotifier {
  final baseUrl =
      "https://www.googleapis.com/books/v1/volumes?q=search-terms&key=AIzaSyApFEv-TWN0ijCKcKUXdyWQ1ziSr093QmY";
  List<Book>? _booksList = [];
  List<Book> get booksList {
    return _booksList!;
  }

  Future fetchBooks() async {
    final url = Uri.parse(baseUrl);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseData = response.body;
      // _booksList = responseData;
      _booksList = Book.fromJson(jsonDecode(responseData)) as List<Book>?;
      print(_booksList.toString());
    }
  }
}
