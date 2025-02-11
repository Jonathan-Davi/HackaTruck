//
//  Rosa.swift
//  Desafio06
//
//  Created by Turma02-8 on 11/02/25.
//

import SwiftUI

struct Rosa: View {
    var fundo: Color = .fundoRosa
    var body: some View {
        ZStack{
            Color(fundo)
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush")
                .resizable()
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    Rosa()
}
