//
// JellyBear.


import SwiftUI

struct MonsterCard: View {
    var monster: Monster
    
    var body: some View {
        ZStack {
            VStack {
                Image(monster.image)
                    .resizable()
                    .scaledToFit()
                Text(monster.name)
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding()
                Text(monster.headline)
                    .foregroundStyle(Color.white)
                    .padding(.bottom, 19)
                
                SeeMoreBT()
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: [Color.mint, Color.black], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    MonsterCard(monster: monsterdata[0])
}
