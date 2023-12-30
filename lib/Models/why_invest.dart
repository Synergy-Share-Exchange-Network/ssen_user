import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class WhyInvestModel {
  String title;
  String description;
  WhyInvestModel({
    required this.title,
    required this.description,
  });

  WhyInvestModel copyWith({
    String? title,
    String? description,
  }) {
    return WhyInvestModel(
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

  factory WhyInvestModel.fromMap(Map<String, dynamic> map) {
    return WhyInvestModel(
      title: map['title'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory WhyInvestModel.fromJson(String source) =>
      WhyInvestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'WhyInvestModel(title: $title, description: $description)';
}
