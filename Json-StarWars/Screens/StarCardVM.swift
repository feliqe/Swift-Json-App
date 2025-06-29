//
//  StarCardVM.swift
//  Json-StarWars
//
//  Created by Feliqe Silva on 28-06-25.
//

import SwiftUI

@Observable
final class StarCardVM{
    let repository: DataRepository
    
    var cards: [StarCard]
    // constructor de json por data
    init(repository: DataRepository = Repository()) {
        self.repository = repository
        do{
            cards = try repository.getData()
        }catch{
            cards = []
        }
    }
}
