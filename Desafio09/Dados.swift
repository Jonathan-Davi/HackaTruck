//
//  Dados.swift
//  Desafio09
//
//  Created by Turma02-8 on 13/02/25.
//

import Foundation
import MapKit

struct Locais: Hashable {
    let nome: String
    let foto: String
    let desc: String
    let latitude: Double
    let longitude: Double
}

var monumentos = [
    Locais(nome: "Cristo Redentor", foto: "https://www.paineirascorcovado.com.br/wp-content/uploads/elementor/thumbs/CristoRedentor2-oyzigktfdsprdoxdbhdrwm5vfd2wk05daondeyc820.png", desc: "Cristo Redentor é uma estátua que retrata Jesus Cristo localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, dentro do Parque Nacional da Tijuca. Tem vista para parte considerável da cidade brasileira do Rio de Janeiro, sendo a frente da estátua voltada para a Baía de Guanabara e as costas para a Floresta da Tijuca. Feito de concreto armado e pedra-sabão, tem trinta metros de altura (uma das maiores estátuas do mundo), sem contar os oito metros do pedestal, sendo a mais alta estátua do mundo no estilo Art Déco. Seus braços se esticam por 28 metros de largura e a estrutura pesa 1145 toneladas.", latitude: -22.951911, longitude: -43.2130621),
    Locais(nome: "Piramides de Gizé", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/All_Gizah_Pyramids.jpg/1200px-All_Gizah_Pyramids.jpg", desc: "Necrópole de Gizé (em árabe: جيزة يسروبوليس), também chamada de Pirâmides de Gizé, Guizé ou Guisa,[1] é um sítio arqueológico localizado no planalto de Gizé, nos arredores do Cairo, Egito. Este complexo de monumentos antigos inclui os três complexos de pirâmides conhecidas como as Grandes Pirâmides, a escultura maciça conhecida como a Grande Esfinge, vários cemitérios, uma vila operária e um complexo industrial. A palavra pirâmide não provém da língua egípcia. Formou-se a partir do grego pyra (que quer dizer fogo, luz, símbolo) e midos (que significa medidas).", latitude: 29.9772962, longitude: 31.1324955),
    Locais(nome: "Grande Muralha da China", foto: "https://upload.wikimedia.org/wikipedia/commons/6/6f/The_Great_Wall_of_China_at_Jinshanling.jpg", desc: "Grande Muralha da China é uma série de fortificações feitas de pedra, tijolo, terra compactada, madeira e outros materiais, geralmente construída ao longo de uma linha leste-oeste através das fronteiras históricas do norte da China para proteger os Estados e impérios chineses contra as invasões dos vários grupos nômades das estepes da Eurásia, principalmente os mongóis. Várias muralhas estavam sendo construídas já no século VII a.C.,[1] que mais tarde foram unidas e tornadas maiores e mais fortes, no que agora é referido como a Grande Muralha.[2] Especialmente famosa é a muralha construída entre 220 e 206 a.C. por Qin Shi Huang, o primeiro Imperador da China. Pouco desta muralha permanece nos dias atuais. Desde então, a Grande Muralha foi reconstruída, mantida e melhorada; a maior parte do trecho existente é da dinastia Ming (1368-1644).", latitude: 40.4319118, longitude: 116.5678),
    Locais(nome: "Petra", foto: "https://wp.rotadeferias.com.br/wp-content/uploads/2017/07/IMG_6248.jpg", desc: "Petra (do grego πέτρα, petra; árabe: البتراء, Al-Bitrā/Al-Batrā), originalmente conhecida pelos nabateus como Raqmu, é uma cidade histórica e arqueológica localizada no sul da Jordânia. A cidade é famosa por sua arquitetura esculpida em rocha e por seu sistema de canalização de água. Outro nome para Petra é Cidade Rosa, devido à cor das pedras do local.", latitude: 30.3206581, longitude: 35.4441862),
    Locais(nome: "Coliseu de Roma", foto: "https://static.nationalgeographicbrasil.com/files/styles/image_3200/public/nationalgeographic_2744183_bx.webp?w=1600&h=900", desc: "Coliseu (em italiano: Colosseo), também conhecido como Anfiteatro Flaviano (em latim: Amphitheatrum Flavium; em italiano: Anfiteatro Flavio), é um anfiteatro oval localizado no centro da cidade de Roma, capital da Itália. Construído com tijolos revestidos de argamassa e areia, e originalmente cobertos com travertino[1] é o maior anfiteatro já construído e está situado a leste do Fórum Romano.", latitude: 41.8902142, longitude: 12.489656)
]
