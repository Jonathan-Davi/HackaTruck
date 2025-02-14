//
//  Detalhe.swift
//  Desafio09
//
//  Created by Turma02-8 on 13/02/25.
//

import SwiftUI

struct Detalhe: View {
    var lugares : Locais
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white, .marrom1], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack(alignment: .center){
                AsyncImage(url: URL(string: lugares.foto)){
                    image in image.resizable()
                } placeholder: {
                    ProgressView()
                }.frame(width: 300, height: 250).shadow(radius: 10).border(Color.black)
                    
                Text("\(lugares.nome)")
                    .font(.title)
                    .fontWeight(.bold)
                Text("\(lugares.desc)")
                    .frame(width: .infinity)
                    .fontWeight(.medium)
                    .padding()
                    
            }
        }
    }
}

#Preview {
    Detalhe(lugares: Locais(nome: "Rio de Janeiro", foto: "https://www.paineirascorcovado.com.br/wp-content/uploads/elementor/thumbs/CristoRedentor2-oyzigktfdsprdoxdbhdrwm5vfd2wk05daondeyc820.png", desc: "Cristo Redentor é uma estátua que retrata Jesus Cristo localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, dentro do Parque Nacional da Tijuca. Tem vista para parte considerável da cidade brasileira do Rio de Janeiro, sendo a frente da estátua voltada para a Baía de Guanabara e as costas para a Floresta da Tijuca. Feito de concreto armado e pedra-sabão, tem trinta metros de altura (uma das maiores estátuas do mundo), sem contar os oito metros do pedestal, sendo a mais alta estátua do mundo no estilo Art Déco. Seus braços se esticam por 28 metros de largura e a estrutura pesa 1145 toneladas.", latitude: 1, longitude: 2))
}
