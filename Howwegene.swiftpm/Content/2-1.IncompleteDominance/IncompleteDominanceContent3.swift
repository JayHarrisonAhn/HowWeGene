//
//  IncompleteDominanceContent3.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/10.
//

import SwiftUI

struct IncompleteDominanceContent3: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("The answer is that, there are only two alleles.\nRed and white.")
                HStack {
                    AlleleView<SnapdragonColor>(
                        allele: SnapdragonColor.red,
                        showComment: true
                    )
                    AlleleView<SnapdragonColor>(
                        allele: SnapdragonColor.white,
                        showComment: true
                    )
                }
                Text("Of course, a flower that has only single kind of allele has the exact color it has.")
                HStack {
                    GenotypeView(
                        personView: {
                            Image("snapdragon_single_red")
                                .resizable()
                                .scaledToFit()
                        },
                        genotype: Genotype<SnapdragonColor>(
                            firstAllele: .red,
                            secondAllele: .red
                        ),
                        showAlleleComment: true
                    )
                    GenotypeView(
                        personView: {
                            Image("snapdragon_single_white")
                                .resizable()
                                .scaledToFit()
                        },
                        genotype: Genotype<SnapdragonColor>(
                            firstAllele: .white,
                            secondAllele: .white
                        ),
                        showAlleleComment: true
                    )
                }
            }
        }
    }
}

struct IncompleteDominanceContent3_Previews: PreviewProvider {
    static var previews: some View {
        IncompleteDominanceContent3()
    }
}
