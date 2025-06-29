//
//  Consulta.swift
//  Json-StarWars
//
//  Created by Feliqe Silva on 28-06-25.
//

import Foundation

// Datos de entrada
protocol DataRepository {
    var url: URL { get }
}

// Constructor de arreglo de data json
extension DataRepository {
    func getData() throws -> [StarCard] {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode([StarCardDTO].self, from: data).map(\.toCard)
    }
}

// Consulta al JSON completo
struct Repository: DataRepository {
    var url: URL {
        Bundle.main.url(forResource: "StarWars", withExtension: "json")!
    }
}

// Consulta prueba ViewTest
struct RepositoryTest: DataRepository {
    var url: URL {
        Bundle.main.url(forResource: "StarWars Test", withExtension: "json")!
    }
}
