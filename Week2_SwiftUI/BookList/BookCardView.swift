//
//  BookCardView.swift
//  Week2_SwiftUI
//
//  Created by student on 19/02/26.
//

import SwiftUI

struct BookCardView: View {
    var body: some View {
        ZStack {
            Rectangle().fill(Color(red: 0.9, green: 0.9, blue: 0.9)).frame(height: 250)
            
            HStack {
                Spacer()
                VStack(spacing: 20) {
                    HStack {
                        Text("Title         :")
                        Text("Harry Potter and The Sorcerers's Stone")
                        Spacer()
                    }
                    HStack {
                        Text("Author    :")
                        Text("J. K. Rowling")
                        Spacer()
                    }
                    HStack {
                        Text("Genre     :")
                        Text("Fantasy")
                        Spacer()
                    }
                }.padding()
                
                Image(.harrypotter)
                    .resizable()
                    .frame(width: 100, height: 160)
                    .padding(.trailing, 30)
            }
        }
    }
}

#Preview {
    BookCardView()
}
