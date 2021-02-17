//
//  Question.swift
//  Quizzler
//
//  Created by Prince Alvin Yusuf on 16/02/21.
//  Copyright © 2021 Combro. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String
    
    
    init (q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}


