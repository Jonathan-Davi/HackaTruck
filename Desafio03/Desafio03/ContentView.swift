//
//  ContentView.swift
//  Desafio03
//
//  Created by Turma02-8 on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Jonathan")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "arrow.clockwise")
                Image(systemName: "line.3.horizontal")
            }
            HStack{
                VStack{
                    Circle()
                        .frame(width: 120)
                        .foregroundColor(.gray)
                }
                VStack{
                    HStack{
                        VStack{
                            Text("8")
                            Text("Posts")
                        }
                        VStack{
                            Text("12k")
                            Text("Seguidores")
                        }
                        VStack{
                            Text("2k")
                            Text("Seguindo")
                        }
                    }
                    
                    Button(action: {
                        
                    }) {
                        Text("Editar Perfil").frame(minWidth: 0, maxWidth: .infinity)
                    }.buttonStyle(.borderedProminent)
                    .frame(height: 30)
                    .tint(Color.gray)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                   
                    
                }
            }
            HStack{
                VStack(alignment: .leading){
                    Text("Jonathan Davi")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("Descreva um pouco sobre voce!")
                }
                Spacer()
            }.padding(.top, 15)
            HStack{
            }
            HStack{
                Spacer()
                VStack{
                    Image(systemName: "square.grid.3x3")
                }
                Spacer()
                VStack{
                    Image(systemName: "square.split.1x2")
                }
                Spacer()
                VStack{
                    Image(systemName: "person.2")
                }
                Spacer()
            }.padding(.top, 15)
            VStack{
                HStack{
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                }
                HStack{
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                }
                HStack{
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                }
            }.padding(.top, 15)
        }.padding()
    }
}

#Preview {
    ContentView()
}
