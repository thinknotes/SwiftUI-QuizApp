//
//  QuestionViewModel.swift
//  QuizApp
//
//  Created by StudentAM on 4/11/24.
//

import Foundation
import SwiftUI

//struct Question {
//    let desc: String
//    let question1: String
//    let question2: String
//    let question3: String
//    let question4: String
//}

struct Question {
    let question: String
    let options: [String]
    let answer: String
    var isCorrect: Bool? = nil 
}



