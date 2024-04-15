//
//  ContentView.swift
//  Quiz
//
//  Created by StudentAM on 4/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView  {
            ZStack {
                    //Uses the same quiz background
                Image("quizBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Spacer()       //Uses spacer to put the view in the center
                    
                    //The title text
                    Text("Quiz Time!!")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .bold()
                    
                    Spacer()       //Uses spacer to put the view in the center
                    
                    //Create a Navigation link to show the game view
                    VStack {
                        NavigationLink(destination: QuizView(), label: {
                            Text("Begin")
                                .frame(width: 200, height: 20)
                                .padding()
                                .background(Color.white)
                                .foregroundColor(.black)
                                .font(.title)
                        })
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        
                    }
                    
                    
                    Spacer()       //Uses spacer to put the view in the center
                }
                
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
