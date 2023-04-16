//
//  MultipleAllelesContent8.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct MultipleAllelesContent8: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("Haha, I know. It's really difficult to understand.\nLet's check what you've understood.")
                Text("Change the type of allele below\nand check how antigen and blood type changes.")
                
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
                Text("And of course, every person has two alleles.")
            }
        }
    }
}

struct MultipleAllelesContent8_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesContent8()
    }
}
