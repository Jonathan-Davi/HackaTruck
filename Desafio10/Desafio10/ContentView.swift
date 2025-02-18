//
//  ContentView.swift
//  Desafio10
//
//  Created by Turma02-8 on 17/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var personagemViewModel = PersonagemViewModel()
    var isPlayableCharacter = true
    
    var body: some View {
        NavigationStack{
            ZStack{
                AsyncImage(url: URL(string: "https://wallpapers.com/images/hd/valorant-background-brn9m97w55cycet4.jpg")){
                    image in image.image?.resizable().scaledToFill().ignoresSafeArea()
                }
                ScrollView{
                    VStack(alignment: .leading){
                        Text("Personagens de Valorant")
                            .font(.system(size: 26))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .padding()
                        ForEach(personagemViewModel.persona, id: \.self){ i in
                            VStack{
                                NavigationLink(destination: Detalhe(personagem: i)){
                                    VStack(alignment: .center){
                                        HStack{
                                            AsyncImage(url: URL(string: i.displayIcon!)){
                                                image in
                                                image.resizable()
                                                    .scaledToFill()
                                                    .frame(width: 100)
                                            }placeholder: {
                                                ProgressView()
                                            }
                                            Spacer()
                                            Text(i.displayName)
                                                .font(.system(size: 22))
                                                .fontWeight(.semibold)
                                                .foregroundStyle(.black)
                                            Spacer()
                                        }
                                    }.frame(width: 350, height: 100)
                                }
                            }.padding().background(Color(.white)).cornerRadius(20)
                        }
                    }.onAppear(){
                        personagemViewModel.fetch()
                    }
                }
            }
        }.tint(Color.white)
    }
}

#Preview {
    ContentView()
}
