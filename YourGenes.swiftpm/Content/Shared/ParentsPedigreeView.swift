//
//  ParentsPedigreeView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct ParentsPedigreeView<AlleleType: Allele>: View {
    let parents: ParentsPedigree<AlleleType>
    var body: some View {
        VStack(spacing: 0) {
            HStack(
                alignment: .center,
                spacing: 0
            ) {
                GenotypeView(
                    personView: {
                        AlleleExpressionView<AlleleType>(expression: parents.dad.expression)
                    },
                    genotype: parents.dad,
                    showAlleleComment: true
                )
                Rectangle()
                    .frame(maxWidth: 60, maxHeight: 3)
                GenotypeView(
                    personView: {
                        AlleleExpressionView<AlleleType>(expression: parents.mom.expression)
                    },
                    genotype: parents.mom,
                    showAlleleComment: true
                )
            }.overlay {
                GeometryReader { proxy in
                    VStack(spacing: 0) {
                        Spacer()
                        Rectangle()
                            .frame(width: 3, height: proxy.size.height / 2)
                    }.frame(
                        width: proxy.size.width,
                        height: proxy.size.height
                    )
                }
            }
        }
    }
}

struct ParentsPedigreeView_Previews: PreviewProvider {
    static var previews: some View {
        ParentsPedigreeView<WidowsPeak>(
            parents: ParentsPedigree(
                dad: Genotype(
                    firstAllele: .vShaped,
                    secondAllele: .straight
                ),
                mom: Genotype(
                    firstAllele: .vShaped,
                    secondAllele: .straight
                )
            )
        )
    }
}
