//
//  ContentView.swift
//  fellowapp
//
//  Created by Julio Gonzalez on 4/11/25.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://286f-108-27-156-69.ngrok-free.app/www/helloFellow/desktop/pages/vehicles.html")!)
            .ignoresSafeArea()
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.allowsBackForwardNavigationGestures = true
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

#Preview {
    ContentView()
}