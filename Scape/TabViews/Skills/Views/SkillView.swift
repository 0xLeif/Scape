//
//  SkillView.swift
//  Scape
//
//  Created by Zach Eriksen on 11/5/20.
//

import SwiftUI
import ScapeKit

struct SkillView: View {
    let skill: ScapeSkill
    
    var body: some View {
        HStack {
            Image(systemName: "questionmark.circle.fill")
            VStack {
                Text("\(skill.currentLevel)")
                    .padding(.trailing, 16)
                
                Divider()
                    .rotationEffect(.degrees(-30))
                
                Text("\(skill.maxLevel)")
                .padding(.leading, 16)
            }
            .frame(width: 60,
                   height: 60,
                   alignment: .center)
        }
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: ScapeCharacter(name: "Hans").skills[.ranged]!)
    }
}
