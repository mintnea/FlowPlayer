//
//  Search.swift
//  FlowPlayer
//
//  Created by Andrea Garea González on 1/3/23.
//

import Foundation
import SwiftUI

struct Search: View {
    @State var search = ""
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View {
        ScrollView {
            VStack(spacing: 18) {
                HStack {
                    Text("Buscador")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                    
                    Spacer(minLength: 0)
                }
                
                HStack(spacing: 15) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.primary)
                    
                    TextField("Buscador", text:$search)
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(15)
                
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach(1...10, id: \.self) { index in
                        Image("p\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 180)
                            .cornerRadius(15)
                    }
                }
            }
            .padding()
            .padding(.bottom, 80)
        }
    }
}
