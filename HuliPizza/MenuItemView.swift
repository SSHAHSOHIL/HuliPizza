//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Sohil Shah on 1/29/25.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Margherita Huli Pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                    
                if let image = UIImage(named: "0_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top, .bottom], 5)
                        .cornerRadius(15)
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
            }
            .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .teal, radius: 5, x:8, y:8)
            VStack(alignment: .leading) {
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu velit felis. Integer neque ipsum, faucibus ac enim ac, dapibus elementum diam. Phasellus dapibus, est ac ultricies lobortis, sem justo dignissim dolor, sed accumsan sapien neque ac dui. Nunc iaculis felis vitae luctus faucibus. Pellentesque tellus purus, sollicitudin sed mattis sed, imperdiet eget risus. Donec pharetra molestie mi. Integer ante nulla, euismod quis felis a, efficitur mattis elit. Maecenas massa erat, consequat tincidunt dolor eu, tristique aliquam felis. Nam ultrices purus id rhoncus suscipit. Nam et nisi eget risus bibendum ornare. Suspendisse fringilla augue non tellus dignissim, ac egestas magna vehicula.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
                
            }
        }
    }
}

#Preview {
    MenuItemView()
}
