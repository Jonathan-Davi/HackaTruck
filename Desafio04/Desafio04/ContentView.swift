//
//  ContentView.swift
//  Desafio04
//
//  Created by Turma02-8 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var mostrarAlerta: Bool = false
    @State private var nome: String = ""
    var body: some View {
        ZStack{
            Image("caminhao")
                .opacity(0.2)
                .scaleEffect(CGSize(width: 0.3, height: 0.7))
                .frame(width: 400, height: 750)
            VStack(){
                Text("Bem Vindo, \(nome)")
                    .font(.system(size: 25))
                    .fontWeight(.medium)
            TextField("Entre com seu nome!", text: $nome)
                    .multilineTextAlignment(.center)
            Spacer()
            }
            VStack(){
                Image("logo")
                    .resizable()
                    .frame(width: 280, height: 120)
                    .shadow(radius: 20)
                Image("truck")
                    .resizable()
                    .frame(width: 280, height: 120)
                    .shadow(radius: 20)
                
            }
            VStack{
                Spacer()
                Button(action: {
                    mostrarAlerta = true
                }){
                    Text("Entrar")
                        .font(.system(size: 22))
                }
                .alert(isPresented: $mostrarAlerta){
                    Alert(title: Text("ALERTA"),
                    message: Text("Voce ira iniciar um desafio agora!"))
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
