//
//  StatusBarView.swift
//  HuliPizza
//
//  Created by Sohil Shah on 2/18/25.
//

import SwiftUI

struct StatusBarView: View {
    @Binding var showOrder:Bool
    @Binding var presentGrid:Bool
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
            
            if !showOrder {
                Button() {
                    presentGrid.toggle()
                } label: {
                    Image(systemName: presentGrid ? "square.grid.3x2" : "list.bullet")
                }
                .padding(.leading,10)
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
    StatusBarView(showOrder: .constant(true), presentGrid: .constant(false)).environmentObject(OrderModel())
        .background(.black)
}
