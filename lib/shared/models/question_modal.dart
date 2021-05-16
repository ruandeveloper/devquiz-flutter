import 'dart:convert';

import 'answer_modal.dart';

class QuestionModal {
  final String title;
  final List<AnswerModal> answers;

  QuestionModal({
    required this.title,
    required this.answers,
  }) : assert(answers.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'answers': answers.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModal.fromMap(Map<String, dynamic> map) {
    return QuestionModal(
      title: map['title'],
      answers: List<AnswerModal>.from(
          map['answers']?.map((x) => AnswerModal.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModal.fromJson(String source) =>
      QuestionModal.fromMap(json.decode(source));
}
