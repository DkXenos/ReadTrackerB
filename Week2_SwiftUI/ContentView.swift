//
//  ContentView.swift
//  Week2_SwiftUI
//
//  Created by student on 19/02/26.
//

import SwiftUI

struct ContentView: View {
    @State var isShown = false
    var body: some View {
        NavigationStack{
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                Button(action:{isShown.toggle()}) {
                    Text("Next")
                }.buttonStyle(.glassProminent)
            }
            .navigationTitle("Main Menu")
            .navigationDestination(isPresented: $isShown, destination: {SubView()})
            .padding()
        }
    }
}

struct SubView: View {
    var body: some View {
        Text("Ohio Ascension")
    }
}

#Preview {
    ContentView()
}
