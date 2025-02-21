//
//  MODEL.swift
//  Desafio11
//
//  Created by Turma02-8 on 20/02/25.
//

import Foundation

struct carros : Decodable, Hashable{
    let _id : String
    let _rev : String
    let marca : String
    let modelo : String
    let ano : Int
    let cor : String
}
