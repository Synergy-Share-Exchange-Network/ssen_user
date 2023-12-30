import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TermConditionModel {
  String title;
  String description;
  TermConditionModel({
    required this.title,
    required this.description,
  });

  TermConditionModel copyWith({
    String? title,
    String? description,
  }) {
    return TermConditionModel(
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
    };
  }

  factory TermConditionModel.fromMap(Map<String, dynamic> map) {
    return TermConditionModel(
      title: map['title'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TermConditionModel.fromJson(String source) =>
      TermConditionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'TermConditionModel(title: $title, description: $description)';
}
