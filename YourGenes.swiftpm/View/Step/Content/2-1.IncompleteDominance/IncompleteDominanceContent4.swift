//
//  IncompleteDominanceContent4.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/10.
//

import SwiftUI

struct IncompleteDominanceContent4: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("And the secret of pink color is the key to understand incomplete dominance rule.")
                Text("When a flower has red and white allele pair, it results in a pink color.")
                GenotypeView(
                    personView: {
                        Image("snapdragon_single_pink")
                            .resizable()
                            .scaledToFit()
                    },
                    genotype: Genotype<SnapdragonColor>(
                        firstAllele: .red,
                        secondAllele: .white
                    ),
                    showAlleleComment: true
                )
            }
        }
    }
}

struct IncompleteDominanceContent4_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceContent4()
    }
}
