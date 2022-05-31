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
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}

extension Participant {
    struct Data {
        var name: String = "Spaghet"
    }
    
    var data: Data {
        Data(name: name)
    }
    
    mutating func update(from data: Data) {
        name = data.name
    }
}

extension Participant {
    static let sampleData: [Participant] =
    [
        Participant(name: "Charles"),
        Participant(name: "Magneto"),
        Participant(name: "Beast"),
        Participant(name: "Wolverine"),
        Participant(name: "Kitty")
    ]
}
