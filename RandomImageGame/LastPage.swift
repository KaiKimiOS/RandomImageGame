//
//  SwiftUIView.swift
//  RandomImageGame
//
//  Created by kaikim on 2023/06/21.
//

import SwiftUI

struct LastPage: View {
    @State var showDetail = false

    var body: some View {
        VStack {
            Text("수고하셨습니다.문제가 끝났습니다").font(.largeTitle)
        
            }
        }
    }


//struct DetailView: View {
//    @Binding var showDetail: Bool
//
//    var body: some View {
//        VStack {
//            Text("돌아가")
//            Button(action: {
//                self.showDetail = false
//            }) {
//                Text("Dismiss")
//            }
//        }
//    }
//}

struct LastPage_Previews: PreviewProvider {
    static var previews: some View {
        LastPage()
    }
}
