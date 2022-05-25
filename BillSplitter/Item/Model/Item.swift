//
//  Item.swift
//  BillSplitter
//
//  Created by Nathan Marasigan on 5/24/22.
//

import Foundation

struct Item: Identifiable {
    let id: UUID
    var name: String
    var amount: Float
    var costs: [Cost]
    
    init(id: UUID = UUID(), name: String, amount: Float, costs: [Cost]) {
        self.id = id
        self.name = name
        self.amount = amount
        self.costs = costs
    }
}

extension Item {

}
