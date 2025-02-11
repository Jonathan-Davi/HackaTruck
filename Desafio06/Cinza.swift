//
//  Cinza.swift
//  Desafio06
//
//  Created by Turma02-8 on 11/02/25.
//

import SwiftUI

struct Cinza: View {
    var fundo: Color = .fundoCinza
    var body: some View {
        ZStack{
            Color(fundo)
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintpalette")
                .resizable()
                .frame(width: 220, height: 200)
        }
    }
}

#Preview {
    Cinza()
}
