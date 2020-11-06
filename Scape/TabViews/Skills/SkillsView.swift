//
//  SkillsView.swift
//  Scape
//
//  Created by Zach Eriksen on 11/5/20.
//

import SwiftUI
import ScapeKit

struct SkillsView: View {
    let character: ScapeCharacter
    
    var skills: [ScapeSkill] {
        character.skills.values.map { $0 }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SkillGridView(skills: skills)
                
                HStack {
                    Spacer()
                    Text("Total level: \(character.totalLevel)")
                }
            }
            .padding()
            .navigationBarTitle("Skills")
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsView(character: ScapeCharacter(name: "Hans"))
    }
}
