//
//  Lista.swift
//  Desafio06
//
//  Created by Turma02-8 on 11/02/25.
//

import SwiftUI

struct Lista: View {
    var fundo: Color = .fundoLista
    var body: some View {
        ZStack{
            Color(fundo)
                .edgesIgnoringSafeArea(.top)
            VStack{
                Text("List")
                    .font(.title)
                    .fontWeight(.medium)
                List{
                    HStack{
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintbrush")
                    }
                    HStack{
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintbrush.pointed")
                    }
                    HStack{
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintpalette")
                    }
                }
                Spacer()
                VStack{
                    
                }
            }
        }
    }
}

#Preview {
    Lista()
}
