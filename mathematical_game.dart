import 'dart:io';
import 'dart:math';

main() {
  int num1,
      num2,
      answer,
      userAnswer,
      score = 0,
      wrongAnswer = 0,
      totalQuestions = 0;
  String playAgain = "yes";

  print("Welcome to the multiplication game!\n");
  while (playAgain == "yes") {
    num1 = Random().nextInt(9) + 1;
    num2 = Random().nextInt(9) + 1;
    answer = num1 * num2;

    print("multiply $num1 * $num2 = ?");
    userAnswer = int.parse(stdin.readLineSync()!);
    if (userAnswer == answer) {
      print("\nCorrect answer!");
      score += 1;
    } else {
      print("Wrong answer! The correct answer is $answer.");
      wrongAnswer += 1;
    }
    totalQuestions += 1;

    print("\nDo you want to play again? (yes/no)");
    playAgain = stdin.readLineSync()!.toLowerCase();

  }

  print("Your score: $score out of $totalQuestions");
  print("Wrong answers: $wrongAnswer");
  print("Thank you for playing!");

}
