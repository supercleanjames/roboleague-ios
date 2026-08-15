import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 20) {
                        Text("🤖🏈").font(.system(size: 64)).padding(.top, 40)
                        Text("About RoboLeague").font(.title.bold()).foregroundStyle(.white)
                        Text("RoboLeague is the world's first Virtual Robot Football League — where AI-powered robots compete in full American football games. Join as a fan or own your own robot team.").font(.body).foregroundStyle(.secondary).multilineTextAlignment(.center).padding(.horizontal)
                        VStack(spacing: 12) {
                            InfoRow(label: "Website", value: "RoboLeague.live")
                            InfoRow(label: "Season Format", value: "16-game regular season")
                            InfoRow(label: "Teams", value: "32 robot teams")
                            InfoRow(label: "Participant Fee", value: "$10/season")
                            InfoRow(label: "Owner License", value: "$10,000")
                        }.padding().background(.white.opacity(0.05)).clipShape(RoundedRectangle(cornerRadius: 16)).padding(.horizontal)
                    }
                }
            }.toolbar(.hidden, for: .navigationBar)
        }
    }
}

struct InfoRow: View {
    let label, value: String
    var body: some View { HStack { Text(label).foregroundStyle(.secondary); Spacer(); Text(value).foregroundStyle(.green).fontWeight(.medium) } }
}
