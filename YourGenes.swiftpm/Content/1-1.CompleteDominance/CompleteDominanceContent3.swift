//
//  CompleteDominanceContent3.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/27.
//

import SwiftUI

struct CompleteDominanceContent3: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 100) {
                VStack(spacing: 30) {
                    GenotypeView(
                        personView: {
                            Image("widowspeak_v")
                                .resizable()
                                .scaledToFit()
                        },
                        genotype: Genotype<WidowsPeak>(
                            firstAllele: .vShaped,
                            secondAllele: .vShaped
                        ),
                        showAlleleComment: true
                    )
                    Text("If a person has two v-shaped alleles,\nhe/she will have a v-shaped hairline.")
                }
                VStack(spacing: 30) {
                    GenotypeView(
                        personView: {
                            Image("widowspeak_s")
                                .resizable()
                                .scaledToFit()
                        },
                        genotype: Genotype<WidowsPeak>(
                            firstAllele: .straight,
                            secondAllele: .straight
                        ),
                        showAlleleComment: true
                    )
                    Text("Conversely, if he/she has two straight alleles,\nthe hairline will be straight.")
                }
            }
        }
    }
}

struct CompleteDominanceContent3_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent3()
    }
}
