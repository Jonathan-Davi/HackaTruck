//
//  Dados.swift
//  Desafio08
//
//  Created by Turma02-8 on 12/02/25.
//

import Foundation

struct Musicas : Identifiable {
    var id: Int
    var nome: String
    var artista: String
    var capa: String
}

var listaMusicas = [
    Musicas(id: 1, nome: "SOLTO", artista: "Djonga", capa: "https://musicainstantanea.com.br/wp-content/uploads/2018/03/29133776_2115891518642398_7573193613566401578_n.jpg"),
    Musicas(id: 2, nome: "ai calica", artista: "pumapjl", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/0/6/e/a/2123781708092011.jpg"),
    Musicas(id: 3, nome: "LEAL", artista: "djonga", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/d/c/a/5/705131553007862.jpg"),
    Musicas(id: 4, nome: "60K", artista: "Major RD", capa: "https://cdn-images.dzcdn.net/images/cover/0d84f527fc64b49782673d48b4173366/0x1900-000000-80-0-0.jpg"),
    Musicas(id: 5, nome: "La Noche", artista: "Yago Oproprio", capa: "https://i.scdn.co/image/ab67616d0000b2738855874e76e6747c529c49fb"),
    Musicas(id: 6, nome: "Enigma", artista: "Yago Oproprio", capa: "https://i.scdn.co/image/ab67616d0000b2738855874e76e6747c529c49fb"),
    Musicas(id: 7, nome: "Praga", artista: "pumapjl", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/0/6/e/a/2123781708092011.jpg"),
    Musicas(id: 8, nome: "Zona Sul", artista: "pumapjl", capa: "https://i.scdn.co/image/ab67616d0000b273a7bb97684153cd195be77054"),
    Musicas(id: 9, nome: "155", artista: "Costa Gold", capa: "https://cdn-images.dzcdn.net/images/cover/eb041daae26c66ff363b7d8c880a01eb/0x1900-000000-80-0-0.jpg"),
    Musicas(id: 10, nome: "Sexy Lady", artista: "Costa Gold", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/2/e/c/e/610791512565243.jpg")
]
