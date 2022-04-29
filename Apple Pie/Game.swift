//
//  Game.swift
//  Apple Pie
//
//  Created by Kaiya Takahashi on 2022-04-28.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetter: [Character]
    var formattedWord: String {
        var guessedWord = ""
        for char in word {
            if guessedLetter.contains(char) {
                guessedWord += "\(char)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetter.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }

}
