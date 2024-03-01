//
// JellyBear.


import SwiftUI

struct ListLabel: View {
    var labelText: String
    var LabelImage: String
    
    var body: some View {
        HStack{
            Text(labelText)
                .fontWeight(.bold)
                .textCase(.uppercase)
            Spacer()
            Image(systemName: LabelImage)
        }
    }
}

#Preview (traits: .sizeThatFitsLayout) {
    ListLabel(labelText: "Monster", LabelImage: "info.circle")
        .padding()
}
