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
            if let image = UIImage(named: "0_lg") {
                Image(uiImage: image)
                    .cornerRadius(10)
            } else {
                Image("surfboard_lg")
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                    .font(.title)
                    .fontWeight(.semibold)
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
