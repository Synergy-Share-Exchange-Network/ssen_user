import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class HistoryModel {
  final String title;
  final String description;
  HistoryModel({
    required this.title,
    required this.description,
  });

  HistoryModel copyWith({
    String? title,
    String? description,
  }) {
    return HistoryModel(
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

  factory HistoryModel.fromMap(Map<String, dynamic> map) {
    return HistoryModel(
      title: map['title'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoryModel.fromJson(String source) =>
      HistoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'HistoryModel(title: $title, description: $description)';
}

void main(List<String> args) {
  HistoryModel X = HistoryModel(title: "title", description: 'description');
  print(X.copyWith());
}
