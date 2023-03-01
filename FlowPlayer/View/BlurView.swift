//
//  BlurView.swift
//  FlowPlayer
//
//  Created by Andrea Garea González on 1/3/23.
//

import Foundation
import SwiftUI

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}
