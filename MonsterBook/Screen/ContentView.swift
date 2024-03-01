//
// JellyBear.


import SwiftUI

struct ContentView: View {
    @State private var isShowSetting: Bool = false
    
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
            .navigationBarItems(
                trailing:
                    Button(action:{
                        isShowSetting = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowSetting){
                        SettingView()
                    }
            )
        }
    }
}

#Preview {
    ContentView(monster: monsterdata)
}
