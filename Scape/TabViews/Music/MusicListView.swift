//
//  MusicView.swift
//  Scape
//
//  Created by Zach Eriksen on 11/5/20.
//

import SwiftUI
import WebKit

struct MusicListView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("OSRS Remix Playlist",
                               destination:
                                YouTubeView(playlistUrl: "https://www.youtube-nocookie.com/embed/videoseries?list=PLT6U95n1weo015aCljbf6h4gHa4LxdjUK"))
            }
            .navigationBarTitle("Music")
        }
    }
}

struct MusicListView_Previews: PreviewProvider {
    static var previews: some View {
        MusicListView()
    }
}
