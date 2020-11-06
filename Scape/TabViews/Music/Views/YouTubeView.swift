//
//  YouTubeView.swift
//  Scape
//
//  Created by Zach Eriksen on 11/5/20.
//

import SwiftUI
import WebView

struct YouTubeView: View {
    @ObservedObject private var store = WebViewStore()
    
    var playlistUrl: String
    
    var body: some View {
        ZStack {
            WebView(webView: store.webView)
                .onAppear {
                    store.webView.load(URLRequest(url: URL(string: playlistUrl)!))
                }
            
            
            if store.webView.isLoading {
                ProgressView()
            }
        }
        .navigationBarTitle("OSRS")
    }
    
    
}

struct YouTubeView_Previews: PreviewProvider {
    static var previews: some View {
        YouTubeView(playlistUrl: "https://www.youtube-nocookie.com/embed/videoseries?list=PLT6U95n1weo015aCljbf6h4gHa4LxdjUK")
    }
}
