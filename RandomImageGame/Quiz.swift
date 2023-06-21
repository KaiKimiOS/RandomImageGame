//
//  Quiz.swift
//  RandomImageGame
//
//  Created by kaikim on 2023/06/21.
//

import Foundation

struct Quiz: Equatable{
    // 이미지명
    var imgName: String
    // 보기
    var answers: [String]
    // 정답 idx
    var answerIndex: Int
}

let quizArr1: [Quiz] = [
    Quiz(imgName:"백종원1", answers:["강형욱", "오은영", "백종원", "다나카"], answerIndex:2),
    Quiz(imgName:"신세경1", answers:["김연아", "김연경", "신민아", "신세경"], answerIndex:3),
    Quiz(imgName:"김민석1", answers:["이도현", "김민석", "이수혁", "주지훈"], answerIndex:1),
    Quiz(imgName:"나나1", answers:["리지", "나나", "소영", "유이"], answerIndex:1),
    Quiz(imgName:"아이유1", answers:["아이쿠", "아이유", "아이돌", "엘리자베스"], answerIndex:1),
    Quiz(imgName:"윤계상1", answers:["장첸", "와썹맨", "마동석", "윤계상"], answerIndex:3),
    Quiz(imgName:"이광수1", answers:["강동원", "김수현", "조정석", "이광수"], answerIndex:3),
    Quiz(imgName:"조승우1", answers:["박서준", "송중기", "조승우", "차승원"], answerIndex:2),
    Quiz(imgName:"진1", answers:["RM", "정국", "지민", "진"], answerIndex:3),
    Quiz(imgName:"태민1", answers:["민호", "태민", "김동현", "신동엽"], answerIndex:1),
    Quiz(imgName:"박종욱", answers:["박종욱", "유민영", "네트파크", "원빈"], answerIndex:0)
]
let quizArr2: [Quiz] = [
    Quiz(imgName:"백종원2", answers:["백종원", "강형욱", "오은영", "다나카"], answerIndex:0),
    Quiz(imgName:"신세경2", answers:["한혜진", "신세경", "박신혜", "한소희"], answerIndex:1),
    Quiz(imgName:"김민석2", answers:["김민석", "박보검", "남주혁", "서강준"], answerIndex:0),
    Quiz(imgName:"나나2", answers:["주연", "수영", "레이", "나나"], answerIndex:3),
    Quiz(imgName:"아이유2", answers:["신봉선", "김아무개", "아이유", "츄"], answerIndex:2),
    Quiz(imgName:"윤계상2", answers:["윤계상", "마동석", "김남길", "차승원"], answerIndex:0),
    Quiz(imgName:"이광수2", answers:["박보검", "공유", "현빈", "이광수"], answerIndex:3),
    Quiz(imgName:"조승우2", answers:["마동석", "유아인", "원빈", "조승우"], answerIndex:3),
    Quiz(imgName:"진2", answers:["태양", "진", "키", "지디"], answerIndex:1),
    Quiz(imgName:"태민2", answers:["태민", "태연", "태평소", "태양초"], answerIndex:0),
    Quiz(imgName:"유민영", answers:["박종욱", "유민영", "네트파크", "원빈"], answerIndex:1),
    //Quiz(imgName:"할수있다", answers:["", "", "", ""], answerIndex:4),
]

