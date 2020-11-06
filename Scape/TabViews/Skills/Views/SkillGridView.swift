//
//  SkillGridView.swift
//  Scape
//
//  Created by Zach Eriksen on 11/5/20.
//

import SwiftUI
import ScapeKit

struct SkillGridView: View {
        @EnvironmentObject private var store: ScapeCharacterStore
    var skills: [ScapeSkill]
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: .infinity))]) {
            ForEach(skills, id: \.self) { skill in
                
                NavigationLink(
                    destination: SkillDetailView(skill: skill),
                    label: {
                        SkillView(skill: skill)
                    })
            }
        }
    }
}

struct SkillGridView_Previews: PreviewProvider {
    static var previews: some View {
        SkillGridView(skills: [])
    }
}
