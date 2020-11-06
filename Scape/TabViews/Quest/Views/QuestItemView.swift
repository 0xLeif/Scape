//
//  QuestItemView.swift
//  Scape
//
//  Created by Zach Eriksen on 11/5/20.
//

import SwiftUI

enum QuestStatus: CaseIterable {
    case incomplete
    case active
    case complete
}

struct QuestItemView: View {
    let status: QuestStatus
    
    private var textColor: Color {
        switch status {
        case .incomplete:
            return .red
        case .active:
            return .yellow
        case .complete:
            return .green
        }
    }
    
    var body: some View {
        Text("Cook's Assistant")
            .foregroundColor(textColor)
    }
}

struct QuestItemView_Previews: PreviewProvider {
    static var previews: some View {
        QuestItemView(status: .active)
    }
}
