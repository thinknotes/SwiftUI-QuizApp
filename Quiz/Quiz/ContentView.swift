//
//  ContentView.swift
//  Quiz
//
//  Created by StudentAM on 4/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
                    Button(action: {
                        
                    }, label: {
                        Text("Begin")
                            .frame(width: 200, height: 20)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .font(.title)
                        
                        
                    })
                    .cornerRadius(10)
                    
                    
                }
                
                
                Spacer()
            }
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
