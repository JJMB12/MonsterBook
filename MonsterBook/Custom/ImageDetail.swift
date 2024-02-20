//
//  ImageDetail.swift
//  MonsterBook
//
//  Created by JJ on 20/2/2567 BE.
//

import SwiftUI

struct ImageDetail: View {
    var monster: Monster
    var body: some View {
        ZStack{
            LinearGradient(colors: monster.color, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(monster.image)
//                .resizable()
//                .scaledToFill()
        }
        .frame(height: 440)
    }
}

#Preview {
    ImageDetail(monster: monsterdata[1])
}
