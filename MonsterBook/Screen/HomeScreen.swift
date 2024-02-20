//
//  HomeScreen.swift
//  MonsterBook
//
//  Created by JJ on 18/2/2567 BE.
//

import SwiftUI

struct HomeScreen: View {
    var monster: [Monster] = monsterdata
    
    var body: some View {
        TabView{
            ForEach(monsterdata[0...2]) { item in
                MonsterCard(monster: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    HomeScreen(monster: monsterdata)
}
