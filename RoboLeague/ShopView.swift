import SwiftUI

struct ShopView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack(spacing: 24) {
                    Text("🏆 Shop").font(.largeTitle.bold()).foregroundStyle(.green)
                    VStack(spacing: 16) {
                        ShopItem(title: "Participant Pass", price: "$10 / Season", description: "Access all games, stats, and community features.", icon: "ticket.fill", color: .green)
                        ShopItem(title: "Team Owner License", price: "$10,000", description: "Full team ownership, revenue share, and control.", icon: "building.2.fill", color: .yellow)
                    }.padding(.horizontal)
                    Link("Purchase at RoboLeague.live →", destination: URL(string: "https://roboleague.live")!).fontWeight(.semibold).foregroundStyle(.green)
                    Spacer()
                }.padding(.top, 40)
            }.toolbar(.hidden, for: .navigationBar)
        }
    }
}

struct ShopItem: View {
    let title, price, description, icon: String
    let color: Color
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon).font(.title2).foregroundStyle(color).frame(width: 50, height: 50).background(color.opacity(0.15)).clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 4) { Text(title).font(.headline).foregroundStyle(.white); Text(price).font(.title3.bold()).foregroundStyle(color); Text(description).font(.caption).foregroundStyle(.secondary) }
            Spacer()
        }.padding().background(.white.opacity(0.05)).clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
