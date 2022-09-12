//
//  Users.swift
//  bankingApp
//
//  Created by Christopher Valencia on 07/09/22.
//

import Foundation

struct User: Codable{
    let nombre: String,
    let apellido: String,
    let correo: String,
    let telefono: String,
    let contraseña: String
    let sexo: Bool,
    let fechnac: Date
    
}
