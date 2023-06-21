//
//  Practice01.swift
//  RandomImageGame
//
//  Created by kaikim on 2023/06/21.
//

import SwiftUI

struct Practice01: View {

    @State var count: Int = 3
    @State var stage: Int = 0
    @State var quiz : [Quiz] = quizArr1
    @State var answer: Int = 0
    var body: some View {
        VStack{
        
            Text("랜덤게임").font(.largeTitle).foregroundColor(.cyan)
            
            Image(quiz[stage].imgName)
                .resizable()
                .frame(width: 350, height: 300)
                .padding()
            VStack{
                
                
                HStack{
                    VStack{
                        Text("1번")
                        Text("2번")
                        Text("3번")
                        Text("4번")
                        
                    }
                    .font(.largeTitle)
                    //                    .padding()
                    VStack{
                        
                        Button {
                            print("gg")
                            buttonClick(0)
                        } label: {
                            Text(quiz[stage].answers[0]).frame(width:300)
                        }.tag(0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 2))
                        
                        Button {
                            print("gg")
                            buttonClick(1)
                        } label: {
                            Text(quiz[stage].answers[1]).frame(width:300)
                        }.tag(1)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 2))
                        
                        Button {
                            print("gg")
                            buttonClick(2)
                        } label: {
                            Text(quiz[stage].answers[2]).frame(width:300)
                        }.tag(2)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 2))
                        
                        Button {
                            print("gg")
                            buttonClick(3)
                        } label: {
                            Text(quiz[stage].answers[3]).frame(width:300)
                        }.tag(3)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 2))
                        
                    }
                    .font(.largeTitle)
                }
                .padding()
                HStack{
                    Button {
                      reset()
                    } label: {
                        Text("초기화")
                            .font(.title)
                            .padding(.horizontal, 50.0)
                            .overlay(
                            RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 2))
                        
                    }
                    
                    Text("기회x \(count)")
                        .foregroundColor(.red)
                        .font(.title)
                        .padding(.horizontal, 50.0)
                        .overlay(
                        RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 2))
                }
            }
            
        }
        
    }
    
    func buttonClick(_ tag:Int) {
        guard stage < 10 else { return reset() }
        if quiz[stage].answerIndex == tag {
            stage += 1
            answer += 1
        } else {
            count -= 1
            stage += 1
            if count < 1 {
                reset()
                count = 3
            }
        }
 
    }
    
    func reset(){
        
        stage = 0
        count = 3
    }
    
}



struct Practice01_Previews: PreviewProvider {
    static var previews: some View {
        Practice01()
        
    }
}
