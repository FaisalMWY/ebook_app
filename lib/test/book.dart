import 'dart:convert';

List<Book> BookModelFromJson(String str) =>
    List<Book>.from(json.decode(str).map((x) => Book.fromJson(x)));

class Book {
  final String? id;
  final String? title;
  final String? author;
  final String? description;
  final String? category;
  final String? avgRating;
  final String? ratingCount;
  final String? image;

  Book({
    this.id,
    this.author,
    this.description,
    this.avgRating,
    this.ratingCount,
    this.image,
    this.title,
    this.category,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['items']['volumeInfo']['title'],
      author: json['items']['volumeInfo']['authors'],
      description: json['items']['volumeInfo']['description'],
      category: json['items']['volumeInfo']['categories'],
      avgRating: json['items']['volumeInfo']['averageRating'],
      ratingCount: json['items']['volumeInfo']['ratingsCount'],
    );
  }
}
