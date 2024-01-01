import 'dart:convert';

class AnnouncementModel {
  final String identification;
  final String content;
  final String companyID;
  String title;
  String author;
  String publishDate;
  List<String> tags;
  List<String> images;
  AnnouncementModel({
    required this.identification,
    required this.content,
    required this.companyID,
    title,
    author,
    publishDate,
    tags,
    images,
  })  : title = title ?? '',
        author = author ?? '',
        publishDate = publishDate ?? '',
        tags = tags ?? [''],
        images = images ?? [''];

  AnnouncementModel copyWith({
    String? identification,
    String? content,
    String? companyID,
    String? title,
    String? author,
    String? publishDate,
    List<String>? tags,
    List<String>? images,
  }) {
    return AnnouncementModel(
      identification: identification ?? this.identification,
      content: content ?? this.content,
      companyID: companyID ?? this.companyID,
      title: title ?? this.title,
      author: author ?? this.author,
      publishDate: publishDate ?? this.publishDate,
      tags: tags ?? this.tags,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'identification': identification});
    result.addAll({'content': content});
    result.addAll({'companyID': companyID});
    result.addAll({'title': title});
    result.addAll({'author': author});
    result.addAll({'publishDate': publishDate});
    result.addAll({'tags': tags});
    result.addAll({'images': images});

    return result;
  }

  factory AnnouncementModel.fromMap(Map<String, dynamic> map) {
    return AnnouncementModel(
      identification: map['identification'] ?? '',
      content: map['content'] ?? '',
      companyID: map['companyID'] ?? '',
      title: map['title'] ?? '',
      author: map['author'] ?? '',
      publishDate: map['publishDate'] ?? '',
      tags: List<String>.from(map['tags']),
      images: List<String>.from(map['images']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AnnouncementModel.fromJson(String source) =>
      AnnouncementModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AnnouncementModel( identification: $identification ,content: $content, companyID: $companyID, title: $title, author: $author, publishDate: $publishDate, tags: $tags, images: $images)';
  }
}
