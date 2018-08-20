//
//  main.swift
//  Guessing Game
//
//  Created by Jake Dillon on 8/16/18.
//  Copyright © 2018 Jake Dillon. All rights reserved.
//

import Foundation

var playAgain = false
repeat {
    
    
    var numberOfTries = 5
    
    
    let randomNumber = Int(arc4random_uniform(99))+1
    
    var guessedNumber: Int! = nil
    print("Guess a random number between 1 and 100: ")
    
    
    repeat {
        repeat {
            numberOfTries = numberOfTries - 1
            
            let input = readLine()!
            if input == "cheat"{
                print(randomNumber)
            }
            if let number = Int(input){
                if number >= 1 && number <= 100 {
                    guessedNumber = number
                }
            } else {
                print("Please enter a number")
            }
            if guessedNumber == randomNumber {
                print("Correct")
            } else {
                print("WRONG, 🖕🏻")
            }
        } while guessedNumber == nil
        guard let guessedNumber = guessedNumber else{
            fatalError()
        }
        if guessedNumber == randomNumber{
            print("Good Job You Guessed A Number 🤘🏻🦖")
            break
        } else if guessedNumber > randomNumber && numberOfTries >= 1 {
            print("Guess Lower ⬇️")
        } else if guessedNumber < randomNumber && numberOfTries <= 1 {
            print("Guess Higher ⬆️")
            break
            
        }
        
    } while numberOfTries > 0
    print("try again? y or n")
    
    let input = readLine()!
    if input.lowercased() == "y" {
        playAgain = true
    } else { playAgain = false
    }
} while playAgain

