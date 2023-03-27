//
//  AllelePersonView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/27.
//

import SwiftUI

struct AllelePersonView: View {
    let alleles: (
        AlleleCardView.AlleleType,
        AlleleCardView.AlleleType
    )
    
    init(
        first: AlleleCardView.AlleleType,
        second: AlleleCardView.AlleleType
    ) {
        self.alleles = (first, second)
    }
    
    var body: some View {
        VStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 50)
            HStack {
                AlleleCardView(alleleType: alleles.0)
                AlleleCardView(alleleType: alleles.1)
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.primary, lineWidth: 3)
        )
    }
}

struct AllelePersonView_Previews: PreviewProvider {
    static var previews: some View {
        AllelePersonView(
            first: .widowspeakVShape,
            second: .widowspeakStraight
        )
    }
}
