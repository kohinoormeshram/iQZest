//
//  Question.swift
//  iQZest
//
//  Created by Kohinoor Meshram on 21/01/18.
//  Copyright © 2018 Kohinoor Meshram. All rights reserved.
//

import Foundation
class Question {
    let questionText : String
    let answer : Bool
    
    init(text:String , correctAnswer:Bool) {
        questionText = text
        answer = correctAnswer
    }
}
