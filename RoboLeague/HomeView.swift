import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 24) {
                        VStack(spacing: 8) {
                            Text("🤖🏈").font(.system(size: 64))
                            Text("RoboLeague").font(.system(size: 36, weight: .black)).foregroundStyle(.green)
                            Text("Virtual Robot Football League").font(.subheadline).foregroundStyle(.secondary)
                        }.padding(.top, 40)
                        VStack(spacing: 16) {
                            Text("Join the Future of Football").font(.title2.bold()).foregroundStyle(.white)
                            TierCard(title: "Participant", price: "$10/season", description: "Watch, bet, and engage with robot football games.", color: .green, icon: "person.fill")
                            TierCard(title: "Team Owner", price: "$10,000", description: "Own a robot team, control strategy, earn revenue.", color: .yellow, icon: "star.fill")
                        }.padding(.horizontal)
                        Link(destination: URL(string: "https://roboleague.live")!) {
                            Label("Visit RoboLeague.live", systemImage: "globe").fontWeight(.bold).foregroundStyle(.black).frame(maxWidth: .infinity).padding().background(.green).clipShape(RoundedRectangle(cornerRadius: 12)).padding(.horizontal)
                        }
                    }.padding(.bottom, 40)
                }
            }.toolbar(.hidden, for: .navigationBar)
        }
    }
}

struct TierCard: View {
    let title, price, description, icon: String
    let color: Color
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon).font(.title).foregroundStyle(color).frame(width: 50, height: 50).background(color.opacity(0.15)).clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 4) {
                Text(title).font(.headline).foregroundStyle(.white)
                Text(price).font(.title3.bold()).foregroundStyle(color)
                Text(description).font(.caption).foregroundStyle(.secondary).lineLimit(2)
            }
            Spacer()
        }.padding().background(.white.opacity(0.05)).clipShape(RoundedRectangle(cornerRadius: 16)).overlay(RoundedRectangle(cornerRadius: 16).stroke(color.opacity(0.3)))
    }
}
