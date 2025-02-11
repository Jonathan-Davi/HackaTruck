//
//  Azul.swift
//  Desafio06
//
//  Created by Turma02-8 on 11/02/25.
//

import SwiftUI

struct Azul: View {
    var fundo: Color = .fundoAzul
    var body: some View {
        ZStack{
            Color(fundo)
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    Azul()
}
