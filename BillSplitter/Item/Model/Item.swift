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
    var quantity: Int
    var costPerItem: Float
    var participants: [Participant]
    var totalCost: Float { costPerItem * Float(quantity) }
    var formattedCostPerItem: String { String(format: "%.2f", costPerItem) }
    var formattedTotalCost: String { String(format: "%.2f", totalCost) }
    
    init(id: UUID = UUID(), name: String, quantity: Int, costPerItem: Float, participants: [Participant]) {
        self.id = id
        self.name = name
        self.quantity = quantity
        self.costPerItem = costPerItem
        self.participants = participants
    }
    
}

extension Item {
    static let sampleData: [Item] =
    [
        Item(name: "Spaghetti", quantity: 4, costPerItem: 20.0, participants: Array(Participant.sampleData[0...3])),
        Item(name: "Calamari", quantity: 1, costPerItem: 15.0, participants: Array(Participant.sampleData[0...2])),
        Item(name: "Lasagna", quantity: 1, costPerItem: 20.0, participants: Array(Participant.sampleData[3...4])),
    ]
}
