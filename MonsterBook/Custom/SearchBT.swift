//
// JellyBear.


import SwiftUI

struct SearchBT: View {
    var body: some View {
        GroupBox{
            HStack{
                Text("Fandom")
                Spacer()
                Link("MonsterHunterRise", destination: URL(string: "https://monsterhunter.fandom.com/wiki/MHRise:_Monsters?wikia-footer-wiki-rec=true")!)
                Image(systemName: "arrow.up.right")
            }
            .font(.footnote)
        }
    }
}

#Preview (traits: .sizeThatFitsLayout){
    SearchBT()
}
