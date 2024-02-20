//
//  ContentView.swift
//  MonsterBook
//
//  Created by JJ on 17/2/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var monster: [Monster] = monsterdata
    var body: some View {
        NavigationView{
            List{
                ForEach(monster) { item in
                    NavigationLink(destination:MonsterDetail(monster: item)){
                        MonsterRow(monster: item)
                    }
                }
            }
            .navigationTitle("Monster")
        }
    }
}

#Preview {
    ContentView(monster: monsterdata)
}
