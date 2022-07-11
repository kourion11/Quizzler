//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Сергей Юдин on 08.07.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Quiz {
    let question: String
    let answer: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        question = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}
