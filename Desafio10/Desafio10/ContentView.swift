//
//  ContentView.swift
//  Desafio10
//
//  Created by Turma02-8 on 17/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var personagemViewModel = PersonagemViewModel()
    
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
                                    AsyncImage(url: URL(string: i.displayIcon!)){
                                        image in
                                        image.resizable()
                                            .scaledToFill()
                                            .frame(width: 100)
                                    }placeholder: {
                                        ProgressView()
                                    }
                                    
                                    Text(i.displayName)
                                        .font(.system(size: 22))
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.white)
                                        .padding(.leading, 50)
                                }
                            }.padding()
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
