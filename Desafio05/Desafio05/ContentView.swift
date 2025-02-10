//
//  ContentView.swift
//  Desafio05
//
//  Created by Turma02-8 on 10/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var distancia: Double = 0
    @State private var tempo: Double = 0
    @State private var calculo: Double = 0
    
    @State private var imagem: String = "inter"
    @State private var fundo: Color = .gray
    
    var body: some View {
        ZStack{
            Color(fundo)
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Text("Digite a distancia (km):")
                    .fontWeight(.medium)
                TextField("0", value: $distancia, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .frame(width: 200)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
                Text("Digite o tempo (h):")
                    .fontWeight(.medium)
                TextField("0", value: $tempo, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .frame(width: 200)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                Button(action: {
                    calculo = distancia/tempo
                    if(calculo == 0){
                        imagem = "inter"
                        fundo = .gray
                    }else if(calculo > 0 && calculo <= 9.9){
                        imagem = "tartaruga"
                        fundo = .corTartaruga
                    }else if(calculo >= 10 && calculo <= 29.9){
                        imagem = "elefante"
                        fundo = .corElefante
                    }else if(calculo >= 30 && calculo <= 69.9){
                        imagem = "avestruz"
                        fundo = .corAvestruz
                    }else if(calculo >= 70 && calculo <= 89.9){
                        imagem = "leao"
                        fundo = .corLeao
                    }else{
                        imagem = "guepardo"
                        fundo = .corGuepardo
                    }
                }){
                    Text("Calcular")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundStyle(.black)
                }
                .buttonStyle(.bordered)
                .background(Color(.blue))
                Text("\(String(format: "%.2f", calculo))km/h")
                    .font(.title)
                Image(imagem)
                    .resizable()
                    .frame(width: 300)
                    .clipShape(.circle)
                
                ZStack{
                    Rectangle()
                        .frame(width: 350, height: 200)
                        .cornerRadius(20)
                    VStack(alignment: .leading){
                        HStack{
                            Text("TARTARUGA (0 - 9.9km/h)")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            Circle()
                                .frame(width: 15, height: 15)
                                .foregroundColor(.corTartaruga)
                        }
                        HStack{
                            Text("ELEFANTE (10 - 29.9km/h)")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            Circle()
                                .frame(width: 15, height: 15)
                                .foregroundColor(.corElefante)
                        }
                        HStack{
                            Text("AVESTRUZ (30 - 69.9km/h)")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            Circle()
                                .frame(width: 15, height: 15)
                                .foregroundColor(.corAvestruz)
                        }
                        HStack{
                            Text("LEAO (70 - 89.9km/h)")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            Circle()
                                .frame(width: 15, height: 15)
                                .foregroundColor(.corLeao)
                        }
                        HStack{
                            Text("GUEPARDO (90 - 130km/h)")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            Circle()
                                .frame(width: 15, height: 15)
                                .foregroundColor(.corGuepardo)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
