//
//  ContentView.swift
//  Scape
//
//  Created by Zach Eriksen on 11/5/20.
//

import SwiftUI

import ScapeKit
import SUIObject

extension ScapeSkill: Hashable {
    public static func == (lhs: ScapeSkill, rhs: ScapeSkill) -> Bool {
        lhs.name == rhs.name &&
            lhs.currentExperience == rhs.currentExperience
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(currentExperience)
    }
}

class ScapeCharacterStore: ObservableObject {
    @Published var character = ScapeCharacter(name: "Hans")
}

struct ContentView: View {
    @EnvironmentObject var store: ScapeCharacterStore
    
    var body: some View {
        TabView {
            
            QuestListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.dash")
                        Text("Quests")
                    }
                }
            
            MusicListView()
                .tabItem {
                    VStack {
                        Image(systemName: "music.note.list")
                        Text("Music")
                    }
                }
            
            SkillsView(character: store.character)
                .tabItem {
                    VStack {
                        Image(systemName: "chart.bar.fill")
                        Text("Skills")
                    }
                }
            
        }
        .navigationBarTitle(store.character.name)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
