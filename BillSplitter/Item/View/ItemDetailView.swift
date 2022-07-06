//
//  ItemDetailView.swift
//  BillSplitter
//
//  Created by Nathan Marasigan on 5/30/22.
//

import SwiftUI

struct ItemDetailView: View {
    let item: Item
    var body: some View {
        List {
            Section(header: Text("Numbers")) {
                HStack {
                    Text("Cost per Item")
                    Spacer()
                    Text("$\(item.formattedCostPerItem)")
                }
                HStack {
                    Text("Quantity")
                    Spacer()
                    Text("\(item.quantity)")
                }
                HStack {
                    Text("Total Cost")
                    Spacer()
                    Text("$\(item.formattedTotalCost)")
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Participants")) {
                ForEach(item.participants) { participant in
                    Label(participant.name, systemImage: "person")
                }
            }
        }
        .navigationTitle("\(item.name)")
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetailView(item: Item.sampleData[0])
        }
    }
}
