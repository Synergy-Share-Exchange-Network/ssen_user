import 'dart:convert';

class KeyFigureModel {
  final String name;
  final String position;
  List<String> image;
  KeyFigureModel({
    required this.name,
    required this.position,
    image,
  }) : image = image ?? [''];

  KeyFigureModel copyWith({
    String? name,
    String? position,
    List<String>? image,
  }) {
    return KeyFigureModel(
      name: name ?? this.name,
      position: position ?? this.position,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'position': position});
    result.addAll({'image': image});

    return result;
  }

  factory KeyFigureModel.fromMap(Map<String, dynamic> map) {
    return KeyFigureModel(
      name: map['name'] ?? '',
      position: map['position'] ?? '',
      image: List<String>.from(map['image']),
    );
  }

  String toJson() => json.encode(toMap());

  factory KeyFigureModel.fromJson(String source) =>
      KeyFigureModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'KeyFigureModel(name: $name, position: $position, image: $image)';
}
