import SwiftUI

struct ShopView: View {
    @State private var showingWebApp = false
    private let primaryURL = URL(string: "https://roboleague.live")!

    var body: some View {
        NavigationStack {
            ZStack {
                Color.roboBlack.ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Choose Your\nPlace on the Field")
                            .font(.largeTitle.bold()).foregroundStyle(.white)
                        PricingCard(title: "Participant", price: "$10", cadence: "/season", icon: "person.fill", features: ["Watch every game", "Vote on league moments", "Join the community"], accent: .roboGreen) { showingWebApp = true }
                        PricingCard(title: "Team Owner", price: "$10,000", cadence: "/license", icon: "shield.fill", features: ["Own your robot football team", "Revenue share", "Full team control"], accent: .roboGold) { showingWebApp = true }
                    }.padding(20)
                }
            }
            .navigationTitle("Shop")
            .sheet(isPresented: $showingWebApp) {
                NavigationStack { WebPageView(url: primaryURL).navigationTitle("Get Started").navigationBarTitleDisplayMode(.inline).toolbar { ToolbarItem(placement: .topBarTrailing) { Button("Done") { showingWebApp = false } } } }
            }
        }
    }
}

private struct PricingCard: View {
    let title: String; let price: String; let cadence: String; let icon: String; let features: [String]; let accent: Color; let action: () -> Void
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Image(systemName: icon).font(.title).foregroundStyle(accent)
            Text(title).font(.title2.bold()).foregroundStyle(.white)
            HStack(alignment: .firstTextBaseline, spacing: 3) { Text(price).font(.system(size: 34, weight: .black)); Text(cadence).foregroundStyle(.white.opacity(0.65)) }.foregroundStyle(.white)
            ForEach(features, id: \.self) { Label($0, systemImage: "checkmark.circle.fill").foregroundStyle(.white.opacity(0.82)).symbolRenderingMode(.hierarchical).tint(accent) }
            Button("Get Started", action: action).buttonStyle(RoboPrimaryButtonStyle())
        }.padding(20).background(Color.white.opacity(0.07)).overlay(RoundedRectangle(cornerRadius: 18).stroke(accent.opacity(0.55))).clipShape(RoundedRectangle(cornerRadius: 18))
    }
}
