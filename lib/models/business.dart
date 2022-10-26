import 'dart:convert';




class SwapProduct {
  final String title;
  final String description;
  final List<String> images;
  final String? id;
  final String userId;
  SwapProduct({
    required this.userId,
    required this.title,
    required this.description,
    required this.images,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'images': images,
      'id': id,
      'userId': userId,
    };
  }

  factory SwapProduct.fromMap(Map<String, dynamic> map) {
    return SwapProduct(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      images: List<String>.from(map['images']),
      userId: map['userId'] ?? '',
      id: map['_id'],

    );
  }

  String toJson() => json.encode(toMap());

  factory SwapProduct.fromJson(String source) =>
      SwapProduct.fromMap(json.decode(source));
}