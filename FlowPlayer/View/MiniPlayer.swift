//
//  MiniPlayer.swift
//  FlowPlayer
//
//  Created by Andrea Garea González on 1/3/23.
//

import Foundation
import SwiftUI

struct MiniPlayer: View {
    var animation: Namespace.ID
    @Binding var expand : Bool
    
    var height = UIScreen.main.bounds.height / 3
    
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                
                if expand {Spacer(minLength: 0)}
                
                Image("QV-Cayo-la-noche-Remix-Portada")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ? height : 55, height: expand ? height : 55)
                    .cornerRadius(15)
                
                if !expand {
                    Text("Cayó La Noche Remix")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                
                Spacer(minLength: 0)
                
                if !expand {
                    Button(action: {}, label: {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                }
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: expand ? .infinity: 80)
        .background(
            VStack(spacing: 0) {
                BlurView()
                Divider()
            }
                .onTapGesture(perform: {
                    withAnimation(.spring()) {
                        expand.toggle()
                    }
                })
        )
        .ignoresSafeArea()
        .offset(y: expand ? 0 : -48)
    }
}
