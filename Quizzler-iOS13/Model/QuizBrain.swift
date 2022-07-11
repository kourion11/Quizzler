//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Сергей Юдин on 11.07.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Quiz(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Quiz(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Quiz(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Quiz(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Quiz(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Quiz(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Quiz(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Quiz(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Quiz(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Quiz(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var quesionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[quesionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[quesionNumber].question
    }
    
    func getProgress() -> Float {
        return Float(quesionNumber + 1) / Float(quiz.count)
    }
    
    func getButtonName(buttonNumber: Int) -> String{
        return quiz[quesionNumber].answer[buttonNumber]
    }
    
    mutating func nextQuestion() {
        if self.quesionNumber < self.quiz.count - 1 {
            quesionNumber += 1
        } else {
            quesionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
