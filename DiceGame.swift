/*
This program generate random number between 1 to 6,
get user number, check these two numbers are correct.
author  Jay Lee
version 1.0
since   2020-04-27
*/

enum InvalidInputError : Error {
  case invalidInput
}

print("Choose the range (1 to ?): ", terminator: "")
do {
  guard let range = Int(readLine()!) else{
    throw InvalidInputError.invalidInput
  }
  // let rangeNumber = Int(range)
  let randomNumber = Int.random(in: 1...range)

  while (true) {
    // String Input
    print("Guess the number between 1 to \(range): ", terminator: "")
    do {
      guard let userNumber = Int(readLine()!) else{
        throw InvalidInputError.invalidInput
      }
      // Check range
      if (userNumber >= 1 && userNumber <= range) {
        //Check number is right
        if (userNumber == randomNumber) {
          break
        } else {
          print("Wrong number!")
        }
      } else {
        print("Out of range!")
      }
    } catch {
      print("Invalid input!")
    }
    print("Try again!")
  }
  // Final output
  print("Correct! The number is \(randomNumber)!")
} catch {
  print("Invalid input!")
}
print("\nDone.")
