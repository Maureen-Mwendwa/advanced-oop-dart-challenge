# Advanced Object-Oriented Programming in Dart Challenge

This repository contains the solution to the "Advanced Object-Oriented Programming in Dart Challenge".

## Challenge Description

The challenge is to create a program that meets the following requirements:

1. Create two classes, one for a student and one for a teacher.
2. The student class should have a name, age, and grade level.
3. The teacher class should have a name, age, and the subject they teach.
4. Create a method in the student class that prints out the student's information.
5. Create a method in the teacher class that prints out the teacher's information.
6. Create a third class that creates a student and teacher object, and calls the methods to print out the information.

## Solution

The solution to this challenge is implemented in the following file:

- `dart_advanced_oop_challenge_solution.dart`: Contains the `Student` class with the required properties and methods, Contains the `Teacher` class with the required properties and methods, Contains the `main()` function that creates the student and teacher objects and calls the corresponding methods.

To run the solution, you can execute the `dart_advanced_oop_challenge_solution.dart` file
This will output the student and teacher information to the console.

## Validation

The solution includes data validation to ensure the integrity of the `Student` and `Teacher` objects:

- The `Student` constructor checks that the grade level is between 0 and 12.
- The `age` setter in both `Student` and `Teacher` classes checks that the age is not negative.

This helps maintain the validity of the data and ensures that the objects are in a correct state.

## Feedback and Contributions

If you have any feedback or suggestions for improving the solution, please feel free to open an issue or submit a pull request. Contributions are always welcome!
