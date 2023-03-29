//
//  WidowsPeak.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

enum WidowsPeak: Allele {
    case straight
    case vShaped
    
    @ViewBuilder
    var cardView: some View {
        AlleleCardView {
            switch self {
            case .straight:
                Text("S")
            case .vShaped:
                Text("S")
            }
        }
    }
}
