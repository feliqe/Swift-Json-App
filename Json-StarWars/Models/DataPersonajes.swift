//
//  DataModel.swift
//  Json-StarWars
//
//  Created by Feliqe Silva on 28-06-25.
//

import Foundation

// campos de la tabla BD
struct StarCardDTO: Codable {
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: String
    let habilidades: String
    let armas: String
    let imagen: String
}

// funccion para calcular en tiempo real
extension StarCardDTO {
    var toCard: StarCard {
        StarCard(id: id,
                 nombre: nombre,
                 raza: raza,
                 descripcion: descripcion,
                 planetaOrigen: planetaOrigen,
                 epoca: epoca,
                 afiliacion: afiliacion.components(separatedBy: ", ").map(\.capitalized),
                 habilidades: habilidades.components(separatedBy: ", ").map(\.capitalized),
                 armas: armas.components(separatedBy: ", ").map(\.capitalized),
                 imagen: imagen)
    }
}

// Identifiable : es un valor unico
// Hashable : instancias son iguales en los campos los compara como igual
struct StarCard: Identifiable, Hashable {
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: [String]
    let habilidades: [String]
    let armas: [String]
    let imagen: String
}

// datos de preinserción
extension StarCard {
    static let test = StarCard(id: 6629,
                               nombre: "Luke Skywalker",
                               raza: "Humano",
                               descripcion: "Héroe de la Alianza Rebelde y Caballero Jedi. Hijo de Anakin Skywalker y Padmé Amidala.",
                               planetaOrigen: "Tatooine",
                               epoca: "Era del Imperio Galáctico",
                               afiliacion: ["Alianza Rebelde", "Nueva República"],
                               habilidades: ["Uso de la Fuerza", "Combate con sable de luz", "Pilotaje"],
                               armas: ["Sable de luz"],
                               imagen: "lukeskywalker")
}
