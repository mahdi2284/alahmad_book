class Book {
  final String id;
  final String title;
  final String author;
  final String coverUrl;
  final String description;
  final int price;
  final double rating;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.coverUrl,
    required this.description,
    required this.price,
    required this.rating,
  });

  // متدی برای ساخت Book از JSON
  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      author: json['author'] ?? '',
      coverUrl: json['coverUrl'] ?? '',
      description: json['description'] ?? '',
      price: json['price'] ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
    );
  }

  // اختیاری: متدی برای تبدیل Book به JSON (برای آپلود به سرور)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'coverUrl': coverUrl,
      'description': description,
      'price': price,
      'rating': rating,
    };
  }
}
