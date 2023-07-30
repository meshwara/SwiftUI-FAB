//
//  ContentView.swift
//  FAB
//
//  Created by D. Prameswara on 30/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            List {
                ForEach(1 ... 30, id: \.self) { _ in
                    HStack(spacing: 15) {
                        Image(systemName: "person.fill")
                            .padding(10)
                            .background(.green.opacity(0.3))
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Fulan bin fulan")
                            Text("Aenean sagittis leo ut massa sagittis varius ac eu mauris. Nunc interdum tellus vestibulum bibendum pulvinar.")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }

            Button {
                //
            } label: {
                Image(systemName: "plus")
                    .font(.title2.weight(.bold))
                    .foregroundColor(.white)
                    .padding()
                    .background(.orange)
                    .clipShape(Circle())
                    .shadow(radius: 5, x: 0, y: 3)
            }
            .padding()
        }
        .navigationTitle("Floating Action Button")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
