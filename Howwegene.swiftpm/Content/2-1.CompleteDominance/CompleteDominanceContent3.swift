//
//  CompleteDominanceContent3.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/27.
//

import SwiftUI

struct CompleteDominanceContent3: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 100) {
                VStack(spacing: 30) {
                    GenotypeView<WidowsPeak>(
                        person: .human,
                        genotype: Genotype(
                            firstAllele: .vShaped,
                            secondAllele: .vShaped
                        ),
                        showAlleleComment: true
                    )
                    Text("If a person has two v-shaped alleles,\nhe/she will have v-shaped hairline.")
                }
                VStack(spacing: 30) {
                    GenotypeView<WidowsPeak>(
                        person: .human,
                        genotype: Genotype(
                            firstAllele: .straight,
                            secondAllele: .straight
                        ),
                        showAlleleComment: true
                    )
                    Text("Of course, if he/she has two straight alleles,\nthe hairline would be straight.")
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
