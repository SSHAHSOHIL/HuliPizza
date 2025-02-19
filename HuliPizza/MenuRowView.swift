//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Sohil Shah on 1/29/25.
//

import SwiftUI

struct MenuRowView: View {
    var item:MenuItem
    var body: some View {
        HStack(alignment:.top, spacing: 15) {
            if let image = UIImage(named: "\(item.id)_sm") {
                Image(uiImage: image)
                    .clipShape(Circle())
                    .padding(.trailing, -25)
                    .padding(.leading, -15)
            } else {
                Image("surfboard_sm")
            }
            VStack(alignment:.leading) {
                HStack {
                    Text(item.name)
                    Spacer()
                    Text(item.price, format: .currency(code: "USD"))
                }
                RatingsView(numberRating: item.rating)
            }
            Spacer()
        }

    }
}

#Preview {
    MenuRowView(item: testMenuItem)
}
