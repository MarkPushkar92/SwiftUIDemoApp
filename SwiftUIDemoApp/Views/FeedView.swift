//
//  FeedView.swift
//  SwiftUIDemoApp
//
//  Created by Марк Пушкарь on 27.03.2022.
//

import Foundation
import SwiftUI

struct FeedItem {
    var name : String
}

struct FeedListItem : View {
    var contentItem : FeedItem
    var body: some View {
        Text("\(contentItem.name)")
    }
}

struct FeedTabView: View {
    
    var body: some View {
        
        List {
            Section(header: Text("Artist")) {
                FeedListItem(contentItem: FeedItem(name: "Rob Zombie"))
                FeedListItem(contentItem: FeedItem(name: "Sum 41"))
                FeedListItem(contentItem: FeedItem(name: "Papa Roach"))
            }.listRowBackground(Color.purple)
            
            Section(header: Text("Album")) {
                FeedListItem(contentItem: FeedItem(name: "Educated Horses"))
                FeedListItem(contentItem: FeedItem(name: "Does it look infected"))
                FeedListItem(contentItem: FeedItem(name: "Ego Trip"))
            }.listRowBackground(Color.blue)
        }.listStyle(.insetGrouped)
    }
}

struct FeedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeedTabView()
    }
}
