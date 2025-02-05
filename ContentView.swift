//
//  ContentView.swift
//  Desafio01
//
//  Created by Turma02-8 on 05/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.red)
                Spacer()
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            HStack{
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.green)
                Spacer()
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.yellow)
            }
            
        }

        .padding()
    }
}

#Preview {
    ContentView()
}
