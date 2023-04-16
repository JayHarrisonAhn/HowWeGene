//
//  MultipleAllelesContent9.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct MultipleAllelesContent9: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("Haha, I know. It's really difficult to understand.\nLet's practice what you've understood.")
                Text("Change the type of alleles below\nand check how antigen and blood type changes.")
                BloodTypeSimulator(
                    genotype: Genotype<BloodType>(
                        firstAllele: .a,
                        secondAllele: .o
                    )
                )
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.primary.opacity(0.4), lineWidth: 1)
                )
                Text("If you got it, let's move on to the quiz section.")
            }
        }
    }
}

struct MultipleAllelesContent9_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesContent9()
    }
}
