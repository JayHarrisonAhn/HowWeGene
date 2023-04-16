//
//  CompleteDominanceContent6.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/07.
//

import SwiftUI

struct CompleteDominanceContent6: View {
    var body: some View {
        VStack(spacing: 30) {
            GenotypeView(
                personView: {
                    Image("widowspeak_v")
                        .resizable()
                        .scaledToFit()
                },
                genotype: Genotype<WidowsPeak>(
                    firstAllele: .vShaped,
                    secondAllele: .straight
                ),
                showAlleleComment: true
            )
            Text("Therefore, he/she will have v-shaped hairline.")
            Text("Let's move on to quiz section.")
        }
    }
}

struct CompleteDominanceContent6_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent6()
    }
}
