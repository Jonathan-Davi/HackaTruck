//
//  Modo3.swift
//  Desafio07
//
//  Created by Turma02-8 on 11/02/25.
//

import SwiftUI

struct Modo3: View {
    @Environment(\.dismiss) var dismiss
    @State var fundo: Color = .corFundo
    @State var vermelho: Color = .vermelho
    var body: some View {
        ZStack{
            Color(fundo)
                .edgesIgnoringSafeArea(.bottom)
            VStack{
                Button("Fechar") {
                    dismiss()
                }
                .font(.title)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
                .background(vermelho)
                .cornerRadius(10)
            }
        }
    }
}

#Preview {
    Modo3()
}
