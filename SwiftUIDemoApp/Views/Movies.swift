//
//  Movies.swift
//  SwiftUIDemoApp
//
//  Created by Марк Пушкарь on 27.03.2022.
//

import Foundation
import SwiftUI

struct Movie : Identifiable {
    var id = UUID()
    var name: String
}

struct MovieRow : View {
    var movie : Movie
    
    var body: some View {
        Text(movie.name)
    }
}

struct MovieDetails : View {
    var movie : Movie
    var body : some View {
        Text("Details for \(movie.name)")
            .font(.largeTitle)
    }
}

struct MovieTabView: View {
    var body: some View {
        let first = Movie(name: "Filth")
        let second = Movie(name: "A Star is Born")
        let movies = [first, second]
        
        return NavigationView {
            List(movies) { item in
                NavigationLink(destination: MovieDetails(movie: item)) {
                MovieRow(movie: item)
                }
            }.navigationBarTitle("Choose a film")
        }
    }
}

struct MovieTabView_Previews: PreviewProvider {
    static var previews: some View {
        MovieTabView()
    }
}
