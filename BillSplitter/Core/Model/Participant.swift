//
//  Participant.swift
//  BillSplitter
//
//  Created by Nathan Marasigan on 5/2/22.
//

import Foundation
struct Participant: Identifiable {
    let id: UUID
    var name: String
    var costs: [Cost]
    
    init(id: UUID = UUID(), name: String, costs: [Cost]) {
        self.id = id
        self.name = name
        self.costs = costs
    }
}

extension Participant {
    struct Data {
        var name: String = "Spaghet"
        var costs: [Cost] = []
    }
    
    var data: Data {
        Data(name: name, costs: costs)
    }
    
    mutating func update(from data: Data) {
        name = data.name
        costs = data.costs
    }
}
