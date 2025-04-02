import 'dart:io';

int sumDigits(int number) {
  if (number < 0) return number;

  int sum = 0;

  for (int n = number; n > 0; n ~/= 10) {
    sum += n % 10;
  }

  return sum;
}

void main() {
  try {
    stdout.write("정수를 입력하세요: ");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print("입력이 비어 있습니다.");
      return;
    }

    int number = int.parse(input);
    int result = sumDigits(number);
    print("sum: $result");

  } catch (e) {
    print("error");
  }
}
