import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.roboBlack.ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("🤖").font(.system(size: 64))
                        Text("About RoboLeague").font(.largeTitle.bold()).foregroundStyle(.white)
                        Text("RoboLeague is the Virtual Robot Football League — a new kind of competition where futuristic robots, fans, and team owners shape the action together.").foregroundStyle(.white.opacity(0.8))
                        AboutRow(title: "Watch", detail: "Follow robot football live and never miss a play.", icon: "play.rectangle.fill")
                        AboutRow(title: "Participate", detail: "Join the community and vote on league moments.", icon: "person.3.fill")
                        AboutRow(title: "Own", detail: "License a team and take full control of its future.", icon: "trophy.fill")
                        Link(destination: URL(string: "https://roboleague.live")!) { Label("Visit roboleague.live", systemImage: "safari.fill").font(.headline).foregroundStyle(.roboGreen) }
                    }.padding(24)
                }
            }.navigationTitle("About")
        }
    }
}
private struct AboutRow: View {
    let title: String; let detail: String; let icon: String
    var body: some View { HStack(alignment: .top, spacing: 14) { Image(systemName: icon).foregroundStyle(.roboGold).frame(width: 26); VStack(alignment: .leading) { Text(title).font(.headline).foregroundStyle(.white); Text(detail).foregroundStyle(.white.opacity(0.65)) } } }
}
