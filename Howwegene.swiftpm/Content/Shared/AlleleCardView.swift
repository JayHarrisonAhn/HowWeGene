//
//  AlleleCardView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/27.
//

import SwiftUI

struct AlleleCardView: View {
    var alleleType: AlleleType
    enum AlleleType {
        case widowspeakStraight
        case widowspeakVShape
        case custom(String)
        
        @ViewBuilder
        var view: some View {
            switch self {
            case .widowspeakStraight:
                Text("S")
            case .widowspeakVShape:
                Text("V")
            case .custom(let string):
                Text(string)
            }
        }
    }
    
    var body: some View {
        VStack {
            alleleType.view
                .font(.bold(.system(size: 50))())
        }
        .frame(maxWidth: 100, maxHeight: 100)
        .aspectRatio(1, contentMode: .fit)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.primary, lineWidth: 5)
        )
    }
}

struct AlleleCardView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            AlleleCardView(alleleType: .widowspeakStraight)
//            AlleleCardView(alleleType: .widowspeakVShape)
        }
    }
}
