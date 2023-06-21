//
//  NextPage.swift
//  RandomImageGame
//
//  Created by kaikim on 2023/06/21.
//

import SwiftUI

struct NextPage: View {
    var body: some View {
        NavigationView(content: {
            NavigationLink(destination: Practice01()) { Text("랜덤게임\n" + "START").font(.largeTitle) }
                   })
        
    
    }
}

struct NextPage_Previews: PreviewProvider {
    static var previews: some View {
        NextPage()
    }
}
