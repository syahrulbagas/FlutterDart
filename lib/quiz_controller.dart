import 'question.dart';

class QuizController {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('Computer Processing Unit adalah kepanjangan dari CPU.', false),
    Question(
        'LAN adalah jaringan komputer dengan area yang berskala kecil.', true),
    Question('Biner adalah sistem bilangan basis 2', true),
    Question('Alamat memori menggunakan basis bilangan hexadesimal.', true),
    Question('Read Acces Memory adalah kepanjangan dari RAM.', false),
    Question('Oktal adalah bilangan basis 16', false),
    Question('Kepanjangan BIOS adalah Basic Input Output System.', true),
    Question(
        'ALU adalah komponen dari CPU yang bertugas melakukan perhitungan aritmatika dan pembadingan.',
        true),
    Question('Open System Interconnection adalah kepanjangan dari OSI.', true),
    Question('File Technology Protocol adalah kepanjangan dari FTP.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
