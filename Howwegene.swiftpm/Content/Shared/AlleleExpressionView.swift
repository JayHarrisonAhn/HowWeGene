//
//  AlleleExpressionView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/15.
//

import SwiftUI

struct AlleleExpressionView<AlleleType: Allele>: View {
    let expression: AlleleType.Expression
    
    var body: some View {
        innerView
    }
    
    @ViewBuilder var innerView: some View {
        if let expression = expression as? WidowsPeak.Expression {
            switch expression {
            case .vShaped:
                Image("widowspeak_v").resizable()
            case .straight:
                Image("widowspeak_s").resizable()
            }
        } else if let expression = expression as? SnapdragonColor.Expression {
            switch expression {
            case .red:
                Image("snapdragon_single_red").resizable()
            case .white:
                Image("snapdragon_single_white").resizable()
            case .pink:
                Image("snapdragon_single_pink").resizable()
            }
        } else if let expression = expression as? BloodType.Expression {
            switch expression {
            case .a:
                Image("bloodtype_a").resizable()
            case .b:
                Image("bloodtype_b").resizable()
            case .o:
                Image("bloodtype_o").resizable()
            case .ab:
                Image("bloodtype_ab").resizable()
            }
        } else {
            Image(systemName: "questionmark")
        }
    }
}

struct AlleleExpressionView_Previews: PreviewProvider {
    static var previews: some View {
        AlleleExpressionView<BloodType>(expression: .ab)
    }
}
