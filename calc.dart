import 'dart:io'; // import dart.io library to use and inpiut and output functionality

void main() {
  //define the main function,the swrating point of the calculator
  print('simple calculator app'); //display simple calculator app on the consule
  print("enter the first number"); //prompt the user tgo enter the first number
  double num1 = double.parse(
      stdin.readLineSync()!); //read the user's input as the first number
  print("enter the second number"); //prompt the user to enter the second number
  double num2 = double.parse(
      stdin.readLineSync()!); //read the users input as the second number
  print(
      "select an operation:"); // prompt the user to select a mathematical operation
  print("1.addition(+)"); //display optuion for addition
  print("2.subtraction(-)"); //display a minus option
  print("3.multiplication(*)"); //display a multiplication option
  print("4.division(/)"); //display a division option
  int choice = int.parse(stdin.readLineSync()!); //read the uses sign

  double result; // declare a variable to store the result chosen operation
  switch (choice) {
    //begin a switch statement basred the operation chosen
    case 1: //case1 : additi0n
      result = num1 + num2; //perform an addition
      print("Result:$num1 + $num2 = $result"); //display the addition result
      break; //Exit the switch the statement
    case 2: // case 2 : subtraction
      result = num1 - num2; //perform subtraction
      print("result:$num1 -$num2 =$result"); //display subtraction result
      break; //exit the switch statement
    case 3: //case 3 multiplication
      result = num1 * num2; //perform multiplication
      print("Result:$num1*$num2 = $result"); //display ,multiplication
      break; //exit the  switch statement
    case 4: //case 4 division
      double result = num1 / num2;
      if (num2 != 0) {
        //check for divoision by zero
        result = num1 /
            num2; // perform the operation if the denominator is mnoit zero
        print("Result: $num1 / $num2 = $result");
      } else {
        print(
            "Error: division by zero is not allowed"); //display the error message
      }
      break; //exit the switch statement
    default: //Exit the switch statement
      print("invalid choice.please enter a number between 1 and 4");
  }
}
