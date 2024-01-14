//
//  ContentView.swift
//  EmojiApp
//
//  Created by Dongtaes on 14.01.2024.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case rocket = "🚀"
    case cross = "❌"
    case wrench = "🔧"
    case sleepy = "💤"
}

struct ContentView: View {
    @State var selection = Emoji.rocket
 
    var body: some View {
        NavigationView{
            VStack {
                Text((selection.rawValue))
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) {emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .padding()
            .navigationTitle("First App!")
        }
    }
}

#Preview {
    ContentView()
}
