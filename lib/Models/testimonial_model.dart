import 'dart:convert';

class TestimonialModel {
  final String identification;
  final String name;
  final String position;
  final String testimony;
  List<String> image;

  TestimonialModel({
    required this.identification,
    required this.name,
    required this.position,
    required this.testimony,
    image,
  }) : image = image ?? [''];

  TestimonialModel copyWith({
    String? identification,
    String? name,
    String? position,
    String? testimony,
    List<String>? image,
  }) {
    return TestimonialModel(
        identification: identification ?? this.identification,
        name: name ?? this.name,
        position: position ?? this.position,
        testimony: testimony ?? this.testimony,
        image: image ?? this.image);
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'identification': identification});
    result.addAll({'name': name});
    result.addAll({'position': position});
    result.addAll({'testimony': testimony});
    result.addAll({'image': image});

    return result;
  }

  factory TestimonialModel.fromMap(Map<String, dynamic> map) {
    return TestimonialModel(
        identification: map['identification'] ?? '',
        name: map['name'] ?? '',
        position: map['position'] ?? '',
        testimony: map['testimony'] ?? '',
        image: List<String>.from(map['image']));
  }

  String toJson() => json.encode(toMap());

  factory TestimonialModel.fromJson(String source) =>
      TestimonialModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TestimonialModel(identification:$identification, name: $name, position: $position, testimony: $testimony, image: $image)';
  }
}
