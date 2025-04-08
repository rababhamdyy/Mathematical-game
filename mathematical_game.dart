import 'dart:io';
import 'dart:math';

void main() {
  int score = 0;
  int wrongAnswer = 0;
  int totalQuestions = 0;
  int level = 1;
  double answer;
  String playAgain = "yes";

  print("Welcome to the Math Game!\n");

  while (playAgain == "yes") {
    double num1 = Random().nextInt(9 * level) + 1;
    double num2 = Random().nextInt(9 * level) + 1;

    List<String> operations = ["+", "-", "*", "/"];
    String symbol = operations[Random().nextInt(operations.length)];

    if (symbol == "/") {
      num2 = Random().nextInt(9 * level) + 1;
      num1 = num2 * (Random().nextInt(9 * level) + 1);
      answer = num1 / num2;
    } else if (symbol == "+") {
      answer = num1 + num2;
    } else if (symbol == "-") {
      answer = num1 - num2;
    } else {
      answer = num1 * num2;
    }

    print("Level $level: What is $num1 $symbol $num2 ?");
    double userAnswer = double.parse(stdin.readLineSync()!);

    if ((userAnswer == answer)) {
      print("Correct!");
      score += 1;

      if (score % 3 == 0) {
        level += 1;
        print("You've advanced to level $level!");
      }
    } else {
      print("Wrong! The correct answer was $answer.");
      wrongAnswer += 1;
    }

    totalQuestions += 1;

    print("\nDo you want to play again? (yes/no)");
    playAgain = stdin.readLineSync()!.toLowerCase();
  }

  print("Final Score: $score out of $totalQuestions");
  print("Wrong Answers: $wrongAnswer");
  print("Thanks for playing!");
}
