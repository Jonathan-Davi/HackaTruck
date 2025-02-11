//
//  Modo2.swift
//  Desafio07
//
//  Created by Turma02-8 on 11/02/25.
//

import SwiftUI

struct Modo2: View {
    
    @State private var fundo: Color = .corFundo
    @State private var vermelho: Color = .vermelho
    @State var nome: String = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(fundo)
                    .ignoresSafeArea()
                VStack{
                    Text("Modo 2")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    Spacer()
                    VStack{
                        TextField("Escreva seu nome aqui!", text: $nome)
                            .multilineTextAlignment(.center)
                        Text("Bem-vindo, \(nome)")
                            .font(.title2)
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                        NavigationLink(destination: Modo2_1(nome: nome)){
                            Text("Acessar Tela")
                                .font(.title2)
                                .frame(height: 50)
                        }
                    }.frame(width: 350, height: 250).background(vermelho).cornerRadius(20)
                    Spacer()
                    VStack{
                        
                    }
                }
            }
        }
    }
}

#Preview {
    Modo2()
}
