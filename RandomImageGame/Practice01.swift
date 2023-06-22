//
//  Practice01.swift
//  RandomImageGame
//
//  Created by kaikim on 2023/06/21.
//

import SwiftUI
import AVFoundation

struct Practice01: View {
    @State var count: Int = 3 // 기회 3번주기
    @State var stage: Int = 0 // stage 번호 넘겨주기위한
    @State var quiz : [Quiz] = quizArr1 // struct으로 이미지, 보기, 정답번호 담겨있음
    @State var answer: Int = 0 // 정답이면 올려주기
    
    //화면이동 2가지 방법
    //1. NavigationLink를 통해 이동가능하다 또한, .disable을 사용하여 true/false로 변경가능
    //2. Vstack안에서 if조건문을 사용해서 만약 참이면 앞에 만들어 놓은 VStack , False이면 뒤에 만들어놓은거 띄우기
    @State var onOff: Bool = true //지금은 2번째 방법 사용중
    


    var body: some View {
       // NavigationView { // NavigationLink를 사용하기 위해서 NavigationView 사용
            VStack{
                if onOff != true {
                    VStack {
                        Spacer()
                        Text("축하합니다").font(.largeTitle)
                        Text("총 \(answer)개 문제를 맞히셨습니다!!").font(.largeTitle)
                            .padding(.bottom, 10)
                        Button {
                            nextLevel()
                            
                        } label: {
                            Text("Next Level ➡️ 💪🏻").font(.largeTitle)
                        }

                        Spacer()
                        
                    }} else {
                        Text("Round \(stage+1)").font(.largeTitle).foregroundColor(.cyan)
                        
                        // 이미지를 stage(Int)에 맞게 넣어주기
                        Image(quiz[stage].imgName)
                            .resizable() // 이미지가 화면에 fit하게 만듬
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
                                VStack{
                                    
                                    Button {
                                        buttonClick(0)
                                    } label: {
                                        //보기란을 stage(Int)에 맞게 넣어주기
                                        Text(quiz[stage].answers[0]).frame(width:300)
                                    }
                                    .tag(0)// 정답 answerIndex와 tag를 일치시켜서 정답확인 가능하게 함
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 2))
                                    
                                    Button {
                                        
                                        buttonClick(1)
                                    } label: {
                                        Text(quiz[stage].answers[1]).frame(width:300)
                                    }
                                    .tag(1)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 2))
                                    
                                    Button {
                                        
                                        buttonClick(2)
                                    } label: {
                                        Text(quiz[stage].answers[2]).frame(width:300)
                                    }
                                    .tag(2)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 2))
                                    
                                    Button {
                                        
                                        buttonClick(3)
                                    } label: {
                                        Text(quiz[stage].answers[3]).frame(width:300)
                                    }
                                    .tag(3)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 2))
                                    
                                }
                                .font(.largeTitle)
                            }
                            .padding()}}
                        HStack{
                            Button { reset()
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
                            //버튼을 원형으로 만드는 디자인
                                .overlay(
                                    RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 2))
                        }
                        .padding(.bottom, 10.0)
                Text("\(answer) / 10").font(.largeTitle).foregroundColor(.blue)
                Spacer()
                
//                        마지막 문제 후, 화면이동을 위한 NavigationLink. 마지막 disabled의 true/false를 이용해 마지막에만 활성화
//                                                    NavigationLink(destination: LastPage()) {
//                                                        Text("Next Level").font(.largeTitle)}
//                                                    .disabled(onOff)

                }
            }
        //}
    
 // 점수, 돌아가기 버튼 추가, 다음단계(quiz2)누르기
    
    
    func buttonClick(_ tag:Int) {
        //스테이지 10을 넘어가면 disable을 false하여 NavigationLink 활성화한다
        //⭐️ 총 라운드가 11까지 있는데 마지막문제를 맞혔을 경우에는 정답 카운트가 안올라가는데 어떻게할까~~~?
        guard stage < 10 else { return onOff = false }
        if quiz[stage].answerIndex == tag { // 정답버튼과 태그가 서로 일치한다면
            stage += 1
            answer += 1
        } else { // 정답버튼과 태그가 불일치하면
            count -= 1
            stage += 1
            if count < 1 { // 기회를 모두 날리면 리셋해주기
                reset()
            }
        }
        print(stage)
    }
    
    func reset(){ // 초기화 function
        stage = 0
        count = 3
        answer = 0
        onOff = true
        quiz = quizArr1
    }
    
    func nextLevel(){
        
        quiz = quizArr2
        stage = 0
        onOff = true
        answer = 0
    }
    
    
}
//struct DetailView: View {
//    @Binding var showDetail: Bool
//
//    var body: some View {
//        VStack {
//            Text("This is the Detail View")
//        }
//    }
//}


struct Practice01_Previews: PreviewProvider {
    static var previews: some View {
        Practice01()
        
    }
}
