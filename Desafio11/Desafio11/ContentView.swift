//
//  ContentView.swift
//  Desafio11
//
//  Created by Turma02-8 on 19/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var carroViewModel = CarroViewModel()
    
    var body: some View {
        VStack{
            Text("Carros")
                .font(.title)
                .padding(.top, 10)
                .fontWeight(.medium)
            ForEach(carroViewModel.car, id: \.self){ i in
                VStack(alignment: .leading){
                    HStack{
                        List{
                            Text(i.marca)
                            Text(i.modelo)
                            Text(i.cor)
                        }
                    }
                }
            }
        }.onAppear(){
            carroViewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
