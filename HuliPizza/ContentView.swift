//
//  ContentView.swift
//  HuliPizza
//
//  Created by Sohil Shah on 1/26/25.
//

import SwiftUI
struct ContentView: View {
    var orders:[Int] = [1,2,3,4,5,6]
    var showOrder:Bool = false
    var body: some View {
        VStack {
            HeaderView()
            if showOrder {
                OrderView(orders: orders)
            } else {
                MenuItemView()
                MenuView()
            }
            Spacer()
        }
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}



