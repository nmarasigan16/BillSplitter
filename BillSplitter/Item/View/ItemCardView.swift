//
//  ItemCardView.swift
//  BillSplitter
//
//  Created by Nathan Marasigan on 5/24/22.
//

import SwiftUI

struct ItemCardView: View {
    let item: Item
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .accessibilityAddTraits(.isHeader)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
    }
}

struct ItemCardView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCardView()
    }
}
