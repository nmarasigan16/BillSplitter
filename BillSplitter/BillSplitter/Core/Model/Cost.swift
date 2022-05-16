//
//  Cost.swift
//  BillSplitter
//
//  Created by Nathan Marasigan on 5/2/22.
//

import Foundation
struct Cost: Identifiable {
    let id: UUID
    var amount: Float
    
    var participant: Participant
    var billItem: BillItem
    
    init(id: UUID = UUID(), amount: Float, participant: Participant, billItem: BillItem) {
        self.id = id
        self.amount = amount
        self.participant = participant
        self.billItem = billItem
    }
}
