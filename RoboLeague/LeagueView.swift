import SwiftUI
import WebKit

struct LeagueView: View {
    var body: some View {
        NavigationStack {
            WebView(url: URL(string: "https://robo-league-live-1.replit.app")!)
                .navigationTitle("League").navigationBarTitleDisplayMode(.inline).ignoresSafeArea(edges: .bottom)
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    func makeUIView(context: Context) -> WKWebView {
        let view = WKWebView(frame: .zero)
        view.allowsBackForwardNavigationGestures = true
        view.load(URLRequest(url: url))
        return view
    }
    func updateUIView(_ webView: WKWebView, context: Context) {}
}
