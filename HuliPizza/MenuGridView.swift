//
//  MenuGridView.swift
//  HuliPizza
//
//  Created by LinkedIn User on 11/17/22.
//

import SwiftUI

struct MenuGridView: View {
    @State private var favorites:[Int] = [-1]
    
    func menu(id:Int)-> MenuItem{
        menu.first(where: {$0.id == id}) ?? noMenuItem
    }
    
    var menu:[MenuItem]
    @Binding var selectedItem:MenuItem
    let columnLayout = Array(repeating: GridItem(), count: 3)
    let columnLayout2 = Array(repeating: GridItem(), count: 5)
    @Namespace private var npsace
    var body: some View {
        VStack{
            LazyVGrid(columns: columnLayout2){
                ForEach(favorites.sorted(),id:\.self) { item in
                    FavoriteTileView(menuItem: menu(id: item))
                        .matchedGeometryEffect(id: item, in: npsace)
                        .onTapGesture {
                            selectedItem = menu(id: item)
                        }
                        .onLongPressGesture {
                            if let index = favorites.firstIndex(where: {$0 == item}){
                                favorites.remove(at: index)
                            }
                        }
                }
            }
            Text(selectedItem.name)
            ScrollView {
                LazyVGrid(columns: columnLayout){
                    ForEach(menu){item in
                        if !favorites.contains(item.id){
                            MenuItemTileView(menuItem: item)
                                .animation(.easeOut, value: favorites)
                                .matchedGeometryEffect(id: item.id, in: npsace)
                                .onTapGesture(count:2) {
                                    if !favorites.contains(item.id){
                                        withAnimation(.easeInOut){
                                            favorites.append(item.id)
                                            
                                        }
                                    }
                                }
                                .onTapGesture {
                                    
                                    selectedItem = item
                                }
                                .onLongPressGesture {
                                    selectedItem = noMenuItem
                                }
                        }
                        
                    }
                }
            }
        }
        .animation(.easeOut(duration:0.5), value: favorites)
    }
}

struct MenuGridView_Previews: PreviewProvider {
    static var previews: some View {
        MenuGridView(menu: MenuModel().menu, selectedItem: .constant(testMenuItem))
    }
}

