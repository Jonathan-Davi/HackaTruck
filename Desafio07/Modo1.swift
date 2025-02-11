//
//  Modo1.swift
//  Desafio07
//
//  Created by Turma02-8 on 11/02/25.
//

import SwiftUI

struct Modo1: View {
    @State private var fundo: Color = .corFundo
    @State private var vermelho: Color = .vermelho
    var body: some View {
        ZStack{
            Color(fundo)
                .ignoresSafeArea()
            VStack{
                Text("Modo 1")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                Spacer()
                VStack{
                    Text("Nome: Jonathan")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                    Text("Sobrenome: Davi")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }.frame(width: 300, height: 150).background(vermelho).cornerRadius(20)
                Spacer()
                VStack{
                    
                }
            }
        }
    }
}

#Preview {
    Modo1()
}
