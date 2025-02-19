//
//  StatusBarView.swift
//  HuliPizza
//
//  Created by Sohil Shah on 2/18/25.
//

import SwiftUI

struct StatusBarView: View {
    @Binding var showOrder:Bool
    @EnvironmentObject var orders:OrderModel
    
    var body: some View {
        HStack {
            Text("\(orders.orderItems.count) orders")
            Spacer()
            Button() {
                showOrder.toggle()
            } label: {
                Image(systemName: showOrder ? "cart" : "menucard")
            }
            Spacer()
            
            Label {
                Text(orders.orderTotal, format: .currency(code: "USD"))
            }
            icon: {
                Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill" )
            }
        }
        .foregroundStyle(.white)
        .font(.title2)
    }
}

#Preview {
    StatusBarView(showOrder: .constant(false)).environmentObject(OrderModel())
}
