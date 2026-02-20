//
//  BookAddView.swift
//  Week2_SwiftUI
//
//  Created by student on 19/02/26.
//

import SwiftUI

struct BookAddView: View {
    @State var title = ""
    @State var author = ""
    @State var genre = ""
    
    let genres = ["Genre", "Fantasy", "Politics", "Comedy", "Romance", "Mystery", "Thriller"]
    @State var selectedGenre = "Genre"
    
    var body: some View {
        VStack {
            HStack {
                Text("Title         :").padding()
                TextField("The book title", text: $title).padding()
                Spacer()
            }
            HStack {
                Text("Author        :").padding()
                TextField("The book auth9r", text: $author).padding()
                Spacer()
            }
            HStack {
                Text("Genre         :").padding()
                Picker("Genre", selection: $selectedGenre) {
                    ForEach(genres, id: \.self) {
                        Text($0)
                    }
                    .padding()
                }
                .pickerStyle(.menu)
                Spacer()
            }
            
            ZStack {
                Rectangle().fill(Color(red: 0.5, green: 0.5, blue: 1.0)).frame(width: 239, height: 239).cornerRadius(10.0)
                Image(systemName: "square.and.arrow.up").imageScale(.large).foregroundColor(.white)
            }.padding()
            
            HStack{
                Button("Cancel") {
                    
                }.tint(.red).buttonStyle(.borderedProminent)
                Button("Save") {
                    
                }.tint(.blue).buttonStyle(.borderedProminent)
            }.padding(.top, 50.0)
            
            Spacer()
        }
        .navigationTitle("Add New Book")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    BookAddView()
}
