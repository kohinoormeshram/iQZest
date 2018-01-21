//
//  QuestionBank.swift
//  iQZest
//
//  Created by Kohinoor Meshram on 21/01/18.
//  Copyright © 2018 Kohinoor Meshram. All rights reserved.
//

import Foundation
class QuestionBank {
    
    var list = [Question]()
    init() {
            list.append(Question(text: "Barack Obama is the first Black President of America", correctAnswer: true))
            list.append(Question(text: "Barack Obama became President twice", correctAnswer: true))
            list.append(Question(text: "Bruce Lee was a great martial artist", correctAnswer: true))
            list.append(Question(text: "India got its independence in 1847", correctAnswer: false))
            list.append(Question(text: "A.R. Rehman got Oscar for Best Debut role as Supporting Actor in Slumdog Millionaire ", correctAnswer: false))
            list.append(Question(text: "Java is Object Oriented Language", correctAnswer: true))
            list.append(Question(text: "India has 26 States in total", correctAnswer: false))
            list.append(Question(text: "By far you've answered 7 questions", correctAnswer: true))
            list.append(Question(text: "Avengers 2 was produced by DC Comics", correctAnswer: false))
            list.append(Question(text: "Superman is from Crypton", correctAnswer: true))
    }
}
