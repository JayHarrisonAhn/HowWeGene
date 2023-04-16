//
//  Antigen.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

enum Antigen: CaseIterable {
    case a
    case b
    
    @ViewBuilder var icon: some View {
        switch self {
        case .a:
            Image("antigen_icon_a")
                .resizable()
        case .b:
            Image("antigen_icon_b")
                .resizable()
        }
    }
    
    @ViewBuilder static var emptyIcon: some View {
        Image(systemName:"xmark")
            .resizable()
            .font(.system(size: 16, weight: .ultraLight))
            .foregroundColor(.primary.opacity(0.5))
            .padding(13)
    }
}
