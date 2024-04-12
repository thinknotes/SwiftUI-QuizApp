//
//  ScoreScreen.swift
//  Quiz
//
//  Created by StudentAM on 4/12/24.
//

import SwiftUI

struct ScoreScreen: View {
    @State var score: Int
    var body: some View {
        NavigationView {
            ZStack {
                Image("quizBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                
                VStack {
                    Spacer()
                    
                    Text("Final Score")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .bold()
                    
                    Text("\(score) out of 10")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title)
                    
                    Spacer()
                    
                    VStack {
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true), label: {
                            Text("Home")
                                .frame(width: 200, height: 20)
                                .padding()
                                .background(Color.white)
                                .foregroundColor(.black)
                                .font(.title)
                        })
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                        
                        
                        NavigationLink(destination: QuizView().navigationBarBackButtonHidden(true), label: {
                            Text("Play Again")
                                .frame(width: 200, height: 20)
                                .padding()
                                .background(Color.white)
                                .foregroundColor(.black)
                                .font(.title)
                        })
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                        
                        
                     
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ScoreScreen(score: 0)
}
