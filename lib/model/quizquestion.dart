class quizQuestion {

 const quizQuestion(this.Text,this.answers);
  final String Text;
  final List<String> answers;


  List<String> getshuffleAnswers(){
    final shuffleList = List.of(answers);

    shuffleList.shuffle();
    return shuffleList;
  }

}