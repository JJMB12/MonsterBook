//
// JellyBear.


import SwiftUI

@main
struct MonsterBookApp: App {
    @AppStorage("isHomeScreen") var isHomeScreen: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isHomeScreen{
                HomeScreen()
            } else{
                ContentView()
            }
        }
    }
}
