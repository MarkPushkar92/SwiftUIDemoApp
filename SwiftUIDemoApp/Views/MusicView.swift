//
//  PlayerView.swift
//  SwiftUIDemoApp
//
//  Created by Марк Пушкарь on 27.03.2022.
//

import Foundation
import SwiftUI

struct SomeSubView: View {
    
    @Environment(\.presentationMode) var presentationMode

    
    var body: some View {
        VStack {
            Text("Oh, Hi, Whacha doin there?")
            Button("Back") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct MusicView: View {
    @State private var showingDetail = false
    
    var body: some View {
        Button(action: {
            self.showingDetail.toggle()
        }) {
            Text("Don't Ever push this one")
        }.sheet(isPresented: $showingDetail) {
            SomeSubView()
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
