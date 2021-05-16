import 'dart:convert';

class AnswerModal {
  final String title;
  final bool isRight;

  AnswerModal({
    required this.title,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRight': isRight,
    };
  }

  factory AnswerModal.fromMap(Map<String, dynamic> map) {
    return AnswerModal(
      title: map['title'],
      isRight: map['isRight'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerModal.fromJson(String source) =>
      AnswerModal.fromMap(json.decode(source));
}
