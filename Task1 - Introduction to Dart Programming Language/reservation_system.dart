import 'dart:io';

void airLine() {
  stdout.writeln(
      "Classes are :\n 1-First class \n 2-Special class \n 3-Economy class ");
  stdout.writeln(
      " First class costs 3500 Dollars \n Special class costs 1500 Dollars \n Economy class costs 500 Dollars ");
  stdout.write("Enter the number of class you want to book ");
  var classNumber = stdin.readLineSync();
  if (classNumber == "1") {
    stdout.writeln("We have booked first class for you ");
  } else if (classNumber == "2") {
    stdout.writeln("We have booked special class for you ");
  } else if (classNumber == "3") {
    stdout.writeln("We have booked Economy class for you ");
  } else {
    stdout.writeln("Invalid class \" Please try again \" ");
  }
}

void hotel() {
  stdout.write("How many roms you want ? ");
  int numberOfRoms = int.parse(stdin.readLineSync()!);
  if (numberOfRoms <= 10) {
    print(
        "To book the roms choose number of rom you want \n 1-Rom without penthouse suites \" it's cost is 500 Dollar per night \" \n 2-Rom with penthouse suites \" it's cost is 2000 per night \" ");
    var classRom = stdin.readLineSync();

    if (classRom == "1") {
      print("We have booked Rom without penthouse suites for you ");
    } else if (classRom == "2") {
      print("We have booked Rom with penthouse suites for you ");
    } else if (classRom != "1" || classRom != "2") {
      print("Invalid class rom \" please try again \" ");
    }
  } else {
    print("No roms available to be scheduled ");
  }
}

void main(List<String> arguments) {
  print("What do you want to reserve Airline seats or Hotel roms ? ");
  var kindReserve = stdin.readLineSync();
  if (kindReserve == "Airline seats" || kindReserve == "airline seats") {
    airLine();
  } else if (kindReserve == "Hotel roms" || kindReserve == "hotel roms") {
    hotel();
  } else {
    print("Invalid input \"Please check your inputs and try again \" ");
  }
}
