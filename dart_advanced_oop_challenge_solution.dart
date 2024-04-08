// The challenge is to create a program that meets the following requirements:

// Create two classes, one for a student and one for a teacher.
// The student class should have a name, age and grade level.
// The teacher class should have a name, age, and the subject they teach.
// Create a method in the student class that prints out the student's information.
// Create a method in the teacher class that prints out the teacher's information.
// Create a third class that creates a student and teacher object, and calls the methods to print out the information.

// Student Class
class Student {
  // Private instance variables.The class has three private instance variables: _name, _age, and _gradeLevel.
  String _name;
  int _age;
  int _gradeLevel;

  //constructor for student class. Using the validation checks in the constructor allows to initialize the object during object creation with valid initial values as it allows you to perform validation checks upfront.
  Student(this._name, this._age, this._gradeLevel) {
    // Validation checks
    if (_gradeLevel < 0 || _gradeLevel > 12) {
      throw ArgumentError('Grade level must be between 0 and 12');
    }
  }

  // Getters to access the private variables.It provides public getters (name, age, gradeLevel) and setters (name, age, gradeLevel) to access and modify the private variables.
  String get name => _name;
  int get age => _age;
  int get gradeLevel => _gradeLevel;

  // Setters to modify the private variables
  set name(String value) => _name = value;
  set age(int value) {
    if (value < 0) {
      throw ArgumentError('Age cannot be negative');
    }
    _age = value;
  }

  set gradeLevel(int value) => _gradeLevel = value;

  // Method to display student information.The displayInfo() method prints out the student's information using the getter methods.
  void displayInfo() {
    print(
        "Student Information:\nName: $name\nAge: $age\nGrade Level: $gradeLevel\n");
  }
}

// Teacher Class
class Teacher {
  // Private instance variables
  String _name;
  int _age;
  String _subject;

  //Constructor for Teacher class
  Teacher(this._name, this._age, this._subject);

  // Getters to access the private variables
  String get name => _name;
  int get age => _age;
  String get subject => _subject;

  // Setters to modify the private variables
  set name(String value) => _name = value;

// By using a setter method, we can add this kind of validation logic to ensure that the data stored in our Student objects is always valid and makes sense. This helps maintain the "integrity" of our data and ensures that our objects are in a valid state, which is important for the overall correctness and reliability of our program.
  set age(int value) {
    // Add validation to ensure age is always a positive number
    if (value < 0) {
      throw ArgumentError('Age cannot be negative');
    }
    _age = value;
  }

  set subject(String value) => _subject = value;

  // Method to display teacher information
  void displayInfo() {
    print("Teacher Information:\nName: $name\nAge: $age\nSubject: $subject");
  }
}

// Main Function
void main() {
  // Creating a Student object and setting its properties
  Student stud = Student('Maureen Mwendwa', 23, 8);
  //update the age using the setter
  // stud.age = -22; Invalid argument(s): Age cannot be negative
  stud.displayInfo();

  // Creating a Teacher object and setting its properties
  Teacher teach = Teacher('Alice Mugambi', 35, 'English');
  teach.displayInfo();
}

// We can also validate that the name and subject are not empty strings or that the age falls within a reasonable range. Implementing such validation logic, helps protect the data from being corrupted or misused.