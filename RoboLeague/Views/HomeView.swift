import SwiftUI

struct HomeView: View {
    @State private var showingWebApp = false
    private let primaryURL = URL(string: "https://roboleague.live")!

    var body: some View {
        ZStack {
            LinearGradient(colors: [.roboBlack, Color(red: 0.02, green: 0.14, blue: 0.09)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 22) {
                    Spacer(minLength: 48)
                    Text("🏈")
                        .font(.system(size: 72))
                        .accessibilityHidden(true)
                    Text("ROBO\nLEAGUE")
                        .font(.system(size: 48, weight: .black, design: .rounded))
                        .tracking(2)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                    Text("Virtual Robot Football League")
                        .font(.title3.weight(.semibold))
                        .foregroundStyle(.roboGreen)
                    Text("Where futuristic robots take the field. Watch, vote, and own the next era of football.")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white.opacity(0.7))
                        .padding(.horizontal, 30)
                    VStack(spacing: 13) {
                        Button { showingWebApp = true } label: {
                            Label("Watch Live", systemImage: "play.fill")
                        }.buttonStyle(RoboPrimaryButtonStyle())
                        Button { showingWebApp = true } label: {
                            Text("Join as Participant — $10/season")
                        }.buttonStyle(RoboOutlineButtonStyle())
                        Button { showingWebApp = true } label: {
                            Text("Become a Team Owner — $10,000")
                        }.buttonStyle(RoboGoldButtonStyle())
                    }.padding(.horizontal, 24)
                    Spacer(minLength: 36)
                }
            }
        }
        .sheet(isPresented: $showingWebApp) {
            NavigationStack {
                WebPageView(url: primaryURL)
                    .navigationTitle("RoboLeague")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar { ToolbarItem(placement: .topBarTrailing) { Button("Done") { showingWebApp = false } } }
            }
        }
    }
}

struct RoboPrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View { configuration.label.font(.headline).frame(maxWidth: .infinity).padding().background(Color.roboGreen.opacity(configuration.isPressed ? 0.7 : 1)).foregroundStyle(.black).clipShape(RoundedRectangle(cornerRadius: 14)) }
}
struct RoboOutlineButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View { configuration.label.font(.headline).frame(maxWidth: .infinity).padding().background(.black.opacity(0.25)).foregroundStyle(.roboGreen).overlay(RoundedRectangle(cornerRadius: 14).stroke(.roboGreen, lineWidth: 1)).clipShape(RoundedRectangle(cornerRadius: 14)) }
}
struct RoboGoldButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View { configuration.label.font(.headline).frame(maxWidth: .infinity).padding().background(Color.roboGold.opacity(configuration.isPressed ? 0.7 : 1)).foregroundStyle(.black).clipShape(RoundedRectangle(cornerRadius: 14)) }
}
