//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Sohil Shah on 1/29/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack(alignment:.bottomTrailing) {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
//                .scaledToFill()
                .ignoresSafeArea()
            Text("Huli Pizza Company")
                .font(.custom("Georgia", size: 30, relativeTo: .title))
//                .foregroundColor(Color("Sky"))
                .foregroundStyle(.regularMaterial)
                .fontWeight(.semibold)
                
        }
    }
}

#Preview {
    HeaderView()
}
