import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house.fill") }
            LeagueView()
                .tabItem { Label("League", systemImage: "football.fill") }
            ShopView()
                .tabItem { Label("Shop", systemImage: "cart.fill") }
            AboutView()
                .tabItem { Label("About", systemImage: "info.circle.fill") }
        }
        .tint(.roboGreen)
        .preferredColorScheme(.dark)
    }
}

private struct LeagueView: View {
    var body: some View {
        WebPageView(url: URL(string: "https://roboleague.live/league")!)
            .ignoresSafeArea(edges: .bottom)
    }
}

extension Color {
    static let roboGreen = Color(red: 0, green: 1, blue: 0.533)
    static let roboGold = Color(red: 1, green: 0.75, blue: 0.18)
    static let roboBlack = Color(red: 0.039, green: 0.039, blue: 0.039)
}
