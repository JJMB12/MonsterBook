//
// JellyBear.


import SwiftUI

struct MonsterRow: View {
    var monster: Monster
    var body: some View {
        HStack{
            Image(monster.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .background(LinearGradient(colors: monster.color, startPoint: .topLeading, endPoint: .bottomLeading))
                .cornerRadius(8)
            VStack (alignment: .leading, spacing: 8){
                Text(monster.name)
                    .font(.title)
                    .fontWeight(.bold)
                Text(monster.headline)
                    .font(.caption)
                    .foregroundStyle(Color.gray)
            }
        }
    }
}

#Preview {
    MonsterRow(monster: monsterdata[1])
}
