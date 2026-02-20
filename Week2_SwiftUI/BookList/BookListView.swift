//
//  BookListView.swift
//  Week2_SwiftUI
//
//  Created by student on 19/02/26.
//

import SwiftUI

struct BookListView: View {
    @State var searchBook = ""
    @State var isAddBook: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment:.leading) {
                    ForEach(0..<10) { _ in
                            BookCardView()
                    }
                }
            }
            .searchable(text: $searchBook, placement: .navigationBarDrawer(displayMode:.always))
            .navigationDestination(isPresented: $isAddBook, destination: {})
            .navigationBarTitle("Book List").navigationBarTitleDisplayMode(.automatic)
            .toolbar{
                NavigationLink(destination: BookAddView()) {
                    Text("Add Book")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

#Preview {
    BookListView()
}
