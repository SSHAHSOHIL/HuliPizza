//
//  ContentView.swift
//  HuliPizza
//
//  Created by Sohil Shah on 1/26/25.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Huli Pizza Company")
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("Order Pizza")
                .font(.title)
            HStack {
                Text("Your Order Item")
                Spacer()
                Text("00.00")
            }
            HStack {
                Image("0_sm")
                Text("Margherita")
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

