//
// JellyBear.


import SwiftUI

struct SettingRow: View {
    var name: String
    var content: String? = nil
    var linklabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            HStack{
                Text(name)
                    .foregroundStyle(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linklabel != nil && linkDestination != nil){
                    Link(linklabel!, destination: URL(string: "http://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(Color.red)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview (traits: .sizeThatFitsLayout){
    Group{
        SettingRow(name: "Developer", content: "JellyBear")
        SettingRow(name: "Wedsite", linklabel: "Monster Hunter Rise", linkDestination: "google.com")
    }
}
