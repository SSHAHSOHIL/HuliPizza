//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Sohil Shah on 1/29/25.
//

import SwiftUI

struct RatingsView: View {
    var numberRating:Int
    var body: some View {
        HStack {
            ForEach(1...6,id:\.self) {circle in
                Image(systemName: numberRating < circle ? "fork.knife.circle" : "fork.knife.circle.fill" )
            }
        }
    }
}

#Preview {
    RatingsView(numberRating: 13)
}
