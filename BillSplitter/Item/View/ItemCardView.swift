
//  ItemCardView.swift
//  BillSplitter
//
//  Created by Nathan Marasigan on 5/24/22.
//

import SwiftUI

struct ItemCardView: View {
    let item: Item
    
    var body: some View {
        let formattedCost = String(format: "%.2f", item.costPerItem * Float(item.quantity))
        VStack(alignment: .leading) {
            HStack {
                Text(item.name)
                    .accessibilityAddTraits(.isHeader)
                    .font(.headline)
                Spacer()
                Label("$\(formattedCost)", systemImage: "doc.text")
                    .accessibilityLabel("\(formattedCost) total cost")
            }
            Spacer()
            HStack {
                //TOOD make this the colors of the people
                Label("\(item.participants.count)", systemImage: "person.3")
                    .accessibilityLabel("\(item.participants.count) participants")
            }
            .font(.caption)
        }
        .padding()
    }
}

struct ItemCardView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCardView(item: Item.sampleData[0])
        .previewLayout(.fixed(width: 400, height: 60))
    }
}
