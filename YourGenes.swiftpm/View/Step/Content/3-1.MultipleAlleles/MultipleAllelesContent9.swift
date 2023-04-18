//
//  MultipleAllelesContent9.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct MultipleAllelesContent9: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("It can be difficult to understand, so let's practice what we've learned.")
                Text("Try changing the types of alleles below\nand see how the antigen and blood type change.")
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
                Text("If you understood it, congratulations! You did it!\nLet's move on to the quiz section.")
            }
        }
    }
}

struct MultipleAllelesContent9_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesContent9()
    }
}
