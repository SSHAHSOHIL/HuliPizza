//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Sohil Shah on 1/29/25.
//

import SwiftUI

struct OrderRowView: View {
    var order:Int
    var body: some View {
        HStack (alignment:.firstTextBaseline){
            Text("Your Order Item \(order)")
            Spacer()
            Text(19.90, format: .currency(code: "USD"))
        }

    }
}

#Preview {
    OrderRowView(order: 1)
}
