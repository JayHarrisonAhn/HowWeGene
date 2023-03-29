//
//  AlleleView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct AlleleView<AlleleType: Allele>: View {
    let allele: any Allele
    var body: some View {
        VStack {
            innerView
                .font(.bold(.system(size: 50))())
        }
        .frame(maxWidth: 100, maxHeight: 100)
        .aspectRatio(1, contentMode: .fit)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.primary, lineWidth: 5)
        )
    }
    
    @ViewBuilder var innerView: some View {
        if let allele = allele as? WidowsPeak {
            switch allele {
            case .straight:
                Text("S")
            case .vShaped:
                Text("V")
            }
        } else {
            Image(systemName: "questionmark")
        }
    }
}

struct NewAlleleCardView_Previews: PreviewProvider {
    static var previews: some View {
        AlleleView<WidowsPeak>(allele: WidowsPeak.straight)
    }
}
