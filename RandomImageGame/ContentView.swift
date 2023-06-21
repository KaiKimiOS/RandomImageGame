//
//  ContentView.swift
//  RandomImageGame
//
//  Created by kaikim on 2023/06/21.
//

import SwiftUI


import SwiftUI

struct ContentView: View {
    
    @State var score = 0
    @State var stage = 0
    @State var quizs:[Quiz] = quizArr1
    @State var lifeIndex = 3
    var life = ["❎","1️⃣","2️⃣","3️⃣"]
    
    var body: some View {
        VStack {
            
            Text("라운드 \(stage + 1)")
                .font(.headline)
                .padding()
            
            Image(quizs[stage].imgName)
                .resizable()
                .frame(width: 300, height: 300)
                .shadow(color: .gray, radius: 10, x: 5, y: 5)
                .padding()
            
//            if quizs[stage].answerIndex != 4{
                VStack{
                    Button {
                        buttonClick(0)
                    } label: {
                        Text("\(quizs[stage].answers[0])")
                            .frame(width: 300, height: 50)
                    }
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                    )
                    
                    Button {
                        buttonClick(1)
                    } label: {
                        Text("\(quizs[stage].answers[1])")
                            .frame(width: 300, height: 50)
                    }
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                    )
                    
                    Button {
                        buttonClick(2)
                    } label: {
                        Text("\(quizs[stage].answers[2])")
                            .frame(width: 300, height: 50)
                    }
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                    )
                    
                    Button {
                        buttonClick(3)
                    } label: {
                        Text("\(quizs[stage].answers[3])")
                            .frame(width: 300, height: 50)
                    }
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1)
                    )
                    
                    Spacer()
                }.padding()

            
            Text("기회 \(life[lifeIndex])")
                .font(.system(size: 25))
                .bold()
        }
        .padding()
    }
    
    func buttonClick(_ tag: Int){
        
        if quizs[stage].answerIndex == tag{
            score += 1
            stage += 1
        }else{
            lifeIndex -= 1
            stage += 1
            
            if lifeIndex < 1{
                reset()
                lifeIndex = 3
            }
        }
        
    
          
        }
    
    
    func reset(){
        score = 0
        stage = 0
        quizs = quizArr1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
