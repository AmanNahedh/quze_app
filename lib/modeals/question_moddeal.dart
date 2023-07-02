class QuestionModel {
  const QuestionModel(this.question,this.answeres);

  final String question;
  final List<String> answeres;

  List<String> shuffleAnsweres(){
    final shuffledList = List.of(answeres);
    shuffledList.shuffle();
    return shuffledList;

  }

}