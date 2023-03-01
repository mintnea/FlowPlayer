//
//  TabBar.swift
//  FlowPlayer
//
//  Created by Andrea Garea González on 1/3/23.
//

import Foundation
import SwiftUI

struct TabBar: View {
    @State var current = 0
    
    @State var expand = false
    @Namespace var animation
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView(selection: $current) {
                Text("Libreria")
                    .tag(0)
                    .tabItem {
                        Image(systemName: "folder")
                        Text("Libreria")
                    }
                Search()
                    .tag(1)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Buscador")
                    }
            }
            
            MiniPlayer(animation: animation, expand: $expand)
        })
    }
}
