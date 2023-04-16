//
//  CompleteDominanceContent4.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/27.
//

import SwiftUI

struct CompleteDominanceContent4: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                GenotypeView(
                    personView: {
                        Image(systemName: "questionmark")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 25)
                    },
                    genotype: Genotype<WidowsPeak>(
                        firstAllele: .vShaped,
                        secondAllele: .straight
                    ),
                    showAlleleComment: true
                )
                Text("Then, what if he/she has two different alleles?")
            }
        }
    }
}

struct CompleteDominanceContent4_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDominanceContent4()
    }
}
