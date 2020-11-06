//
//  SkillDetailView.swift
//  Scape
//
//  Created by Zach Eriksen on 11/5/20.
//

import SwiftUI
import ScapeKit

struct SkillDetailView: View {
    @EnvironmentObject private var store: ScapeCharacterStore
    
    let skill: ScapeSkill
    
    var body: some View {
        VStack {
            
            SkillView(skill: skill)
            
            HStack {
                Button("Level Down") {
                    store.character.skills[skill.type]?.levelDown()
                }
                Spacer()
                Button("Level Up") {
                    store.character.skills[skill.type]?.levelUp()
                }
            }
        }
        .navigationBarTitle(skill.name)
    }
}

struct SkillDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SkillDetailView(skill: ScapeSkill(type: .ranged))
    }
}
