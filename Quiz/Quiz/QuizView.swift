//
//  QuizView.swift
//  Quiz
//
//  Created by StudentAM on 4/12/24.
//

import SwiftUI

struct QuizView: View {
    @State private var score: Int = 0
    
    
    let questions: [Question] = [
        //Question 1
        Question(question: "Which programming language is primarily used in conjunction with Swift for iOS app development?", options: ["Java", "JavaScript", "SwiftUI", "C++"], answer: "SwiftUI"),
        //Question 2
        Question(question: "Which SwiftUI view is used to create a button in an iOS app?", options: ["Button", "Text", "Bold", "VStack"], answer: "Button"),
        //Question 3
        Question(question: "How is a list created in SwiftUI?", options: ["Button", "List", "Color", "HStack"], answer: "List"),
        //Question 4
        Question(question: "How do you display text in a SwiftUI view?", options: ["TextView", "Bold", "Text", "VStack"], answer: "Text"),
        //Question 5
        Question(question: "How can you change the color of text in a SwiftUI Text view?", options: ["Color", "Foreground Color", "ColorView", "Hex"], answer: "Foreground Color"),
        //Question 6
        Question(question: "What SwiftUI modifier can be used to make text bold in a Text view?", options: ["Fontsize", "Fontweight", "Bold", "Italic"], answer: "Fontweight"),
        //Question 7
        Question(question: "Which layout container in SwiftUI arranges views in a vertical stack?", options: ["VStack", "HStack", "LazyVGrid", "Foreach"], answer: "VStack"),
        //Question 8
        Question(question: "Which layout container in SwiftUI arranges views in a horizontal stack?", options: ["VStack", "HStack", "LStack", "Print"], answer: "HStack"),
        //Question 9
        Question(question: "What year was SwiftUI first released to the public?", options: ["2018", "2017", "2019", "2020"], answer: "2019"),
        //Question 10
        Question(question: "What IDE do you use to code with?", options: ["Visual Studio Code", "Repliet", "TextEditor", "Xcode"], answer: "Xcode")
    ]
    
    @State private var currentQuestion: Int = 0
    
    @State private var isCorrect: Bool = false
    
    
    @State private var answerIsChosen: Bool = false
    
    
    @Environment(\.dismiss) var dismiss
    
    @State private var numberOfQuestions: Int = 1
    
    @State var finalScore: Int = 0
    
    @State private var gameFinshed: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Image("quizBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                VStack {
                  
                    

                    Text("Score: \(score)")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .bold()
                    
                    Spacer()
                    
                    
                    VStack {
                        
                        
                        Text("Question \(numberOfQuestions)  of 10")
                            .padding()
                            .background()
                            .cornerRadius(10)
                            .foregroundColor(.black)
                        
                        
                        
                        Text("\(questions[currentQuestion].question)")
                            .padding()
                            .background()
                            .cornerRadius(10)
                            .frame(width: 350, height: 200)
                            .foregroundColor(.black)
                        
                        
                        
                        
                        
                        
                        
                        Spacer()
                        
                        VStack {
                            
                            
                            ForEach(questions[currentQuestion].options, id: \.self) { answer in
                                Button(action: {
                                    checkAnswer(questions[currentQuestion], answer)
                                    
                                    
                                }, label: {
                                    Text("\(answer)")
                                        .frame(width: 320, height: 50)
                                        .cornerRadius(18)
                                        .background(.white)
                                        .foregroundColor(.black)
                                       
                                    
                                    
                                    
                                    
                                })
                               
                                .background(isCorrect == true ? Color.green : Color.red)
                                .padding()
                                .disabled(answerIsChosen)
                                
                                
                                
                                
                                
                            }
                            
                            HStack {
                                if answerIsChosen {
                                    Button(action: {
                                        if numberOfQuestions < 10 {
                                            currentQuestion += 1
                                            numberOfQuestions += 1
                                            answerIsChosen = false
                                        } else {
                                            gameFinshed = true
                                        }
                                        
                                    }, label: {
                                        
                                        
                                        
                                        if numberOfQuestions == 10 {
                                            Text("Last Question")
                                                .padding()
                                                .background(.white)
                                                .cornerRadius(10)
                                                //
                                                .foregroundColor(.black)
                                            
                                        } else {
                                            Text("Next Question")
                                                .padding()
                                                .background(.white)
                                                .cornerRadius(10)
                                                //
                                                .foregroundColor(.black)
                                        }
                                        
                                    })
                                }
                                
                                
                                if gameFinshed {
                                    NavigationLink(destination: {
                                        ScoreScreen(score: finalScore).navigationBarBackButtonHidden(true)
                                    }, label: {
                                        Text("Show Score")
                                            .padding()
                                            .background(.white)
                                            .cornerRadius(10)
                                            //
                                            .foregroundColor(.black)
                                    })
                                }
                            }
                            
                            
                            Spacer()
                            
                        }
                        
                        
                        
                    }
                    
                    
                }
            }
        }
    }
    
    func checkAnswer(_ question: Question, _ selectedOption: String) {
        
        answerIsChosen = true
        if answerIsChosen == false && question.answer == selectedOption {
            isCorrect = true
            score += 1
            finalScore += 1
            
        } else {
            isCorrect = false
            answerIsChosen = false
            score += 0
            
        }
        
       
        
    }
}

#Preview {
    QuizView()
}



