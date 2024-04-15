//
//  QuestionViewModel.swift
//  Quiz
//
//  Created by StudentAM on 4/12/24.
//

import Foundation
import SwiftUI

//Create a struct for question to make it eaiser to write out questions and store the data
struct Question {
    let question: String
    let options: [String]
    let answer: String
    var isCorrect: Bool? = nil
}

