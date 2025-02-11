//
//  Modo2_1.swift
//  Desafio07
//
//  Created by Turma02-8 on 11/02/25.
//

import SwiftUI

struct Modo2_1: View {
    var nome: String
    var fundo: Color = .corFundo
    var vermelho: Color = .vermelho
    var body: some View {
        ZStack{
            Color(fundo)
                .ignoresSafeArea()
            VStack{
                Text("Volte \(nome)")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
            }.frame(width: 200, height: 100).background(vermelho).cornerRadius(20)
        }
    }
}

#Preview {
    Modo2_1(nome: "Preview")
}
