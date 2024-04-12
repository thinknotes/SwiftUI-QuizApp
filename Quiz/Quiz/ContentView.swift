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
                Image("quizBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                    
                    Text("Quiz Time!!")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .bold()
                    
                    Spacer()
                    
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
                    
                    
                    Spacer()
                }
                
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
