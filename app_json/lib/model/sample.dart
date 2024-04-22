// ignore_for_file: public_member_api_docs, sort_constructors_first
class Sample {
  final String name;
  final int age;
  final List<String> hobby;
  final Github github;
  final List<Book> books;
  //final Contact contact;

  Sample({
    required this.name,
    required this.age,
    required this.hobby,
    required this.github,
    required this.books,
    //required this.contact,
  });

  factory Sample.fromJson(Map<String, dynamic> json) {
    return Sample(
      name: json["name"] ?? '',
      age: json["age"] ?? 0,
      hobby: List<String>.from(json["hobby"] ?? []),
      github: Github.fromJson(json["github"]),
      books: List<Book>.from(
          json['books'].map((book) => Book.fromJson(book)) ?? []),
      //contact: Contact.fromJson(json["contact"]),
    );
  }

  @override
  String toString() {
    return 'Sample(name: $name, age: $age, hobby: $hobby, github: $github, books: $books)';
  }
}

class Github {
  final String? username;
  final int? repositories;
  final bool? isGDE;

  Github({
    this.username,
    this.repositories,
    this.isGDE,
  });

  factory Github.fromJson(Map<String, dynamic> json) {
    return Github(
      username: json["username"] ?? '',
      repositories: json["repositories"] ?? 0,
      isGDE: json["isGDE"],
    );
  }

  @override
  String toString() =>
      'Github(username: $username, repositories: $repositories, isGDE: $isGDE)';
}

class Book {
  final int? id;
  final String? title;
  final String? subtitle;

  Book({
    this.id,
    this.title,
    this.subtitle,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json["id"] ?? 0,
      title: json["title"] ?? '',
      subtitle: json["subtitle"] ?? '',
    );
  }

  @override
  String toString() => 'Book(id: $id, title: $title, subtitle: $subtitle)';
}