//
//  IncompleteDominanceContent3.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/10.
//

import SwiftUI

struct IncompleteDominanceContent3: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("This phenomenon is due to the fact that Snapdragon flowers have only two alleles - Red and White.")
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
                Text("A flower that has two identical alleles will be the same color,\nbut those with different alleles can show varying colors.")
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
