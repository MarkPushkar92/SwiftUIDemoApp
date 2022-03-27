//
//  ContentView.swift
//  SwiftUIDemoApp
//
//  Created by Марк Пушкарь on 27.03.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedView = 0
    @State private var isProfileTabDisabled = false
    
    var body: some View {
        TabView(selection: $selectedView) {
            ProfileTabView(tabSelection: $selectedView, isViewDisabled: $isProfileTabDisabled).tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
            .tag(0)
            .disabled(isProfileTabDisabled)
            
            FeedTabView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Feed")
                }.tag(1)
            
            MusicView()
                .tabItem {
                    Image(systemName: "music.note")
                    Text("Player")
                }.tag(2)

            MovieTabView()
                .tabItem {
                    Image(systemName: "video")
                    Text("Video")
                }.tag(3)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
