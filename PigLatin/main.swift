//
//  main.swift
//  PigLatin
//

import Foundation

// INPUT
// Global variable, tracks how many words we can expect to have to translate to Pig Latin

var countOfExpectedWordsToTranslate = 3
while true {
    
    //prompt
    print("How many words?")
    //nil
    guard let givenInput = readLine() else{
        continue
    }
    //Interger
    guard let givenInterger = Int(givenInput) else{
        continue
    }
    //range
    if givenInterger <= 0 || givenInterger > 10 {
        continue
    }
    countOfExpectedWordsToTranslate = givenInterger
    break
}



// Write a loop to actually collect the expected count of words to be translated from user
// e.g.: write the rest of the INPUT section


// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire





for n in 1...countOfExpectedWordsToTranslate {
    var vowelFound = false
    var suffix = ""
    var prefix = ""
    print("Enter word #\(n):")
    guard let givenWord = readLine() else {
        continue
    }
    
    for letter in givenWord {
        
        if vowelFound == false {
    switch letter {
    case "A", "E", "I", "O", "U":
        vowelFound = true
    default:
        vowelFound = false
    }
    
}
    if vowelFound == false {
        suffix += String(letter)
    } else if vowelFound == true {
    prefix  += String(letter)
    }
    
    
}
    let translation = prefix + suffix + "AY"
    print("Pig-latin trnaslation is:\(translation)")
}

//// Collect the words to be translated
//for counter in 1...countOfExpectedWordsToTranslate {
//
//    // Ask user for the word to be translated
//    print("Enter word #\(counter):")
//
//    // Create a variable that has the translated word
//    var translatedWord = ""
//
//    // Get the input (use guard-let to guarantee it is not nil)
//    // and then print it out
//    guard let givenInput = readLine() else {
//        // If someone enters nil input, just skip to the next line
//        continue
//    }
//
//    // Replace this logic with the correct logic
//    translatedWord = givenInput
//
//}


