//
//  Detalhe.swift
//  Desafio10
//
//  Created by Turma02-8 on 17/02/25.
//

import SwiftUI

struct Detalhe: View {
    
    @State var personagem : Personagem
    
    var body: some View {
        ZStack{
            AsyncImage(url: URL(string: "https://wallpapers.com/images/hd/valorant-background-brn9m97w55cycet4.jpg")){
                image in image.image?.resizable().scaledToFill().ignoresSafeArea()
            }
            VStack{
                AsyncImage(url: URL(string: personagem.displayIcon!)){
                    imagem in imagem.image?.resizable().frame(width: 250, height: 250)
                }.padding()
                Text(personagem.displayName)
                    .font(.title)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                Text(personagem.description)
                    .font(.system(size: 24))
                    .foregroundStyle(.white)
                    .frame(width: 300)
                    .fontWeight(.medium)
                    .padding()
                HStack{
                    ForEach(personagem.abilities!, id: \.self){ a in
                        AsyncImage(url: URL(string: a.displayIcon!)){
                            image in image.image?.resizable().frame(width: 40, height: 40).padding(.horizontal, 10)
                        }
                    }
                }
            }
        }
    }
}
//
//#Preview {
//    Detalhe(personagem: Personagem(displayName: "gekko", description: "fodase", displayIcon: "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/displayicon.png", displayIconSmall: "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/displayicon.png", abilities: Habilidades(displayName: "äidjiasd", displayIcon: "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/abilities/ability1/displayicon.png")))
//}
