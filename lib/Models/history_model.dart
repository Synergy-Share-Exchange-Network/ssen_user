import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class HistoryModel {
  final String identification;
  final String title;
  final String description;
  HistoryModel({
    required this.identification,
    required this.title,
    required this.description,
  });

  HistoryModel copyWith({
    String? identification,
    String? title,
    String? description,
  }) {
    return HistoryModel(
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

  factory HistoryModel.fromMap(Map<String, dynamic> map) {
    return HistoryModel(
      identification: map['identification'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryModel.fromJson(String source) =>
      HistoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'HistoryModel(identification:$identification,  title: $title, description: $description)';
}
