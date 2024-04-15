//
//  ScoreScreen.swift
//  Quiz
//
//  Created by StudentAM on 4/12/24.
//

import SwiftUI

struct ScoreScreen: View {
    @State var score: Int
    //Create a var for score
    var body: some View {
        NavigationView {
            ZStack {
                //Uses the same quiz background
                Image("quizBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                
                VStack {
                        //Uses spacer to put the view in the center
                    Spacer()
                    
                    Text("Final Score")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .bold()
                    
                    //Records and updates the score out of 10
                    Text("\(score) out of 10")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title)
                    
                    Spacer()
                    
                    //Has two buttons. 1 which goes home. 2. Allows the user to play again
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
                    
                    //Uses spacer to put the view in the center
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ScoreScreen(score: 0)
}
