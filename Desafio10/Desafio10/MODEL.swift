//
//  MODEL.swift
//  Desafio10
//
//  Created by Turma02-8 on 17/02/25.
//

import Foundation

struct Personagem : Decodable, Hashable {
    var displayName : String
    var description : String
    var displayIcon : String?
    var displayIconSmall : String
    var abilities : [Habilidades]?
    var isPlayableCharacter=true
}

struct Habilidades : Decodable, Hashable {
    var displayName: String?
    var displayIcon : String?
}

struct API : Decodable {
    var data : [Personagem]
}
