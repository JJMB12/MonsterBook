//
// JellyBear.


import SwiftUI

struct MonsterDetail: View {
    var monster: Monster
    
    var body: some View {
        NavigationView{
            ScrollView (.vertical, showsIndicators: false){
                VStack (alignment: .center, spacing: 20){
                    ImageDetail(monster: monster)
                    VStack (alignment: .leading, spacing: 20){
                        Text(monster.name)
                        Text(monster.headline)
                        Text(monster.description)
                        SearchBT()
                    }
                    .padding(.horizontal, 20)
                }
                .navigationBarTitle(monster.name, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

#Preview {
    MonsterDetail(monster: monsterdata[1])
}
