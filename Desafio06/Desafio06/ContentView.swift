//
//  ContentView.swift
//  Desafio06
//
//  Created by Turma02-8 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView	{
            Rosa()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush")
                }
            Azul()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed")
                }
            Cinza()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette")
                }
            Lista()
                .tabItem {
                    Label("Lista", systemImage: "list.dash")
                }
        }
    }
}

#Preview {
    ContentView()
}
