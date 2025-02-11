//
//  ContentView.swift
//  Desafio07
//
//  Created by Turma02-8 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var fundo: Color = .corFundo
    @State private var showingSheet = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color(fundo)
                    .ignoresSafeArea()
                VStack{
                    List{
                        NavigationLink(destination: Modo1()){
                            Text("Modo 1")
                                .frame(width: 200, height: 100)
                            
                        }
                        NavigationLink(destination: Modo2()){
                            Text("Modo 2")
                                .frame(width: 200, height: 100)
                        }
                        Button("Modo 3") {
                                    showingSheet.toggle()
                                }
                                .sheet(isPresented: $showingSheet) {
                                    Modo3()
                                }
                                .frame(width: 200, height: 100)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
