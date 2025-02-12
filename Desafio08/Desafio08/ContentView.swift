//
//  ContentView.swift
//  Desafio08
//
//  Created by Turma02-8 on 12/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.fundo2, .fundo1, .fundo3], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack{
                    Image("capa")
                        .resizable()
                        .frame(width: 180, height: 180)
                        .shadow(radius: 10)
                        .padding(40)
                    HStack{
                        Text("R.A.P")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .padding(.leading, 15)
                        Spacer()
                    }
                    HStack{
                        Circle()
                            .frame(width: 20)
                            .padding(.leading, 15)
                            .foregroundColor(.white)
                            .padding(.bottom, 15)
                        Text("apenasJonathan")
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .padding(.bottom, 15)
                        Spacer()
                    }
                    ScrollView{
                        VStack{
                            ForEach(listaMusicas){ i in
                                NavigationLink(destination: Detalhe(musica: i)){
                                    VStack{
                                        HStack{
                                            AsyncImage(url: URL(string: i.capa)) { image in
                                                image.resizable()
                                            } placeholder: {
                                                ProgressView()
                                            }
                                            .frame(width: 50, height: 50)
                                            .padding(.leading, 15)
                                            .padding(.top, 10)
                                            .shadow(radius: 10)
                                            VStack(alignment: .leading){
                                                Text(i.nome)
                                                    .foregroundStyle(.white)
                                                    .fontWeight(.semibold)
                                                Text(i.artista)
                                                    .font(.system(size: 13))
                                                    .foregroundStyle(.white)
                                            }
                                            Spacer()
                                            Image(systemName: "ellipsis")
                                                .padding(.horizontal)
                                                .foregroundColor(.white)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        
        }.tint(.white)
    }
}

#Preview {
    ContentView()
}
