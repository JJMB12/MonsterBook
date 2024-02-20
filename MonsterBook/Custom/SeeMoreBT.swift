//
//  SeeMoreBT.swift
//  MonsterBook
//
//  Created by JJ on 18/2/2567 BE.
//

import SwiftUI

struct SeeMoreBT: View {
    @AppStorage("isHomeScreen") var isHomeScreen: Bool?
    
    var body: some View {
        Button(action: {
            isHomeScreen = false
        }) {
            HStack {
                Text("SeeMore")
                
                Image(systemName: "swirl.circle.righthalf.filled.inverse")
            }
            .padding()
            .background(Capsule().strokeBorder(Color.white, lineWidth: 2))
        }
        .accentColor(.white)
    }
}

#Preview {
    SeeMoreBT()
}
