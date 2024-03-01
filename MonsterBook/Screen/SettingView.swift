//
// JellyBear.


import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            ScrollView (.vertical, showsIndicators: false){
                VStack{
                    GroupBox(
                        label:ListLabel(labelText: "Monster", LabelImage: "info.circle")){
                                Divider()
                                HStack(alignment: .center){
                                    Image("Logo-MHRise")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                    Text("In the modern age, Monster Hunter stands as a globally renowned game, celebrated for its captivating culture and exceptional design. With its immersive gameplay centered around battling monsters, crafting, and exploration, it delivers a lifelike gaming experience with impeccable control. This article will spotlight the MonsterHunterData app, designed to provide detailed and accessible information about monsters within the Monster Hunter universe. Let's delve into the app's features together!")
                                }
                    }
                    
                    GroupBox(
                        label: ListLabel(labelText: "Application", LabelImage: "apps.iphone")){
                            SettingRow(name: "Developer", content: "JJ")
                            SettingRow(name: "Wedsite", linklabel: "Monster Hunter Rise", linkDestination: "google.com")
                        }
                }
                .navigationBarTitle("Setting")
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    
                    
                )
            }
        }
    }
}

#Preview {
    SettingView()
}
