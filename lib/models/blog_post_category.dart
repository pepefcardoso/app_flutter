class BlogPostCategory {
  final int? id;
  final String? name;
  final String? image;

  BlogPostCategory({
    this.id,
    this.name,
    this.image,
  });

  BlogPostCategory.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        image = json['image'];
}
