//
//  SwiftUIView1.swift
//  RandomImageGame
//
//  Created by kaikim on 2023/06/22.
//

import SwiftUI

struct SwiftUIView1: View {
    @State private var isPresented = false
    
    var body: some View {
        Button("Present!") {
            self.isPresented.toggle()
        }
        .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
    }
}

struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("유빈님 정신차리세요!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!").foregroundColor(.white).bold().font(.largeTitle)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }
    }
}



struct SwiftUIView1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView1()
    }
}
