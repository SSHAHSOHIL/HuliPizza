//
//  ContentView.swift
//  HuliPizza
//
//  Created by Sohil Shah on 1/26/25.
//

import SwiftUI
struct ContentView: View {
    var menu:[MenuItem]
    @StateObject var orders:OrderModel = OrderModel()
    @State private var showOrder:Bool = true
    @State private var selectedItem:MenuItem = noMenuItem
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
                .environment(\.colorScheme, .light)
            StatusBarView(showOrder: $showOrder)
            if showOrder {
                OrderView(orders: orders)
                    .cornerRadius(10)
            } else {
                MenuItemView(item:$selectedItem, orders: orders)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView(menu:menu, selectedItem: $selectedItem)
            }
            Spacer()
        }
        .padding()
        .background(.linearGradient(colors: [.cyan,Color("Surf"), Color("Sky"), .white], startPoint: .topLeading, endPoint: .bottom))
        .environmentObject(orders)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu:MenuModel().menu)
        
    }
}



