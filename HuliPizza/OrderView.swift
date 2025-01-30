//
//  OrderView.swift
//  HuliPizza
//
//  Created by Sohil Shah on 1/29/25.
//

import SwiftUI

struct OrderView: View {
    var orders:[Int]
    var body: some View {
        VStack {
            Label {
                Text(59.9, format: .currency(code: "USD"))
            }
            icon: {
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill" )
            }
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView {
                ForEach(orders,id:\.self) { order in
                    OrderRowView(order: order)
                }
            }
        }
    }
}


#Preview {
    OrderView(orders: [1,2,3,4,5,6])
}
