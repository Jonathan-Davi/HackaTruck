//
//  ContentView.swift
//  Desafio02
//
//  Created by Turma02-8 on 05/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{ // IMPORTANTE SEMPRE DEVOLVER UMA VIEW
            HStack {
                Image("messi")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                
                VStack(spacing: 10){
                    Text("Messi")
                        .foregroundColor(.red)
                    Text("no")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("Celta")
                        .foregroundColor(.yellow)
                    
                }.padding(.horizontal, 40)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
