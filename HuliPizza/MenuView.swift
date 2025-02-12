//
//  MenuView.swift
//  HuliPizza
//
//  Created by Sohil Shah on 1/29/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView {
            ForEach(1...9, id:\.self) { item in
                MenuRowView(item: item)
            }
        }
    }
}

#Preview {
    MenuView()
}
