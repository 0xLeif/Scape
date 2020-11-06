//
//  QuestView.swift
//  Scape
//
//  Created by Zach Eriksen on 11/5/20.
//

import SwiftUI

struct QuestListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(QuestStatus.allCases, id: \.self) { status in
                    NavigationLink(
                        destination: QuestItemView(status: status)
                            .navigationBarTitle("Cook's Assistant"),
                        label: {
                            QuestItemView(status: status)
                        })
                }
            }
            .navigationBarTitle("Quests")
        }
    }
}

struct QuestListView_Previews: PreviewProvider {
    static var previews: some View {
        QuestListView()
    }
}
