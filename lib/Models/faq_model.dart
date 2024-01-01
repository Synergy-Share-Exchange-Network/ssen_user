import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class FaqModel {
  String identification;
  String title;
  String description;
  FaqModel({
    required this.identification,
    required this.title,
    required this.description,
  });

  FaqModel copyWith({
    String? identification,
    String? title,
    String? description,
  }) {
    return FaqModel(
      identification: identification ?? this.identification,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identification': identification,
      'title': title,
      'description': description,
    };
  }

  factory FaqModel.fromMap(Map<String, dynamic> map) {
    return FaqModel(
      identification: map['identification'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FaqModel.fromJson(String source) =>
      FaqModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'FaqModel(identification:$identification,  title: $title, description: $description)';
}
