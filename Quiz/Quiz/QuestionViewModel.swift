//
//  QuestionViewModel.swift
//  Quiz
//
//  Created by StudentAM on 4/12/24.
//

import Foundation
import SwiftUI

struct Question {
    let question: String
    let options: [String]
    let answer: String
    var isCorrect: Bool? = nil
}

