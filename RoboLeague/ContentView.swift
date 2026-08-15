import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem { Label("Home", systemImage: "house.fill") }
            LeagueView().tabItem { Label("League", systemImage: "sportscourt.fill") }
            ShopView().tabItem { Label("Shop", systemImage: "bag.fill") }
            AboutView().tabItem { Label("About", systemImage: "info.circle.fill") }
        }
        .tint(.green)
        .preferredColorScheme(.dark)
    }
}
