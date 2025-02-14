//
//  Detalhe.swift
//  Desafio08
//
//  Created by Turma02-8 on 12/02/25.
//

import SwiftUI

struct Detalhe: View {
    
    var musica : Musicas
    var play = false

    var body: some View {
        ZStack{
            LinearGradient(colors: [.fundo1, .fundo3, .fundo3], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: musica.capa)){
                    image in image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200, height: 200)
                .shadow(radius: 10)
                Text(musica.nome)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                Text(musica.artista)
                    .font(.system(size: 16))
                    .foregroundStyle(.white)
                HStack{
                    Image(systemName: "shuffle")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding()
                        .foregroundColor(.white)
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding()
                        .foregroundColor(.white)
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding()
                        .foregroundColor(.white)
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding()
                        .foregroundColor(.white)
                    Image(systemName: "repeat")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding()
                        .foregroundColor(.white)
                }.padding(.top, 30)
            }
        }
    }
}

#Preview {
    Detalhe(musica: Musicas( id: 1, nome: "SOLTO", artista: "Djonga", capa: "https://musicainstantanea.com.br/wp-content/uploads/2018/03/29133776_2115891518642398_7573193613566401578_n.jpg"))
}
