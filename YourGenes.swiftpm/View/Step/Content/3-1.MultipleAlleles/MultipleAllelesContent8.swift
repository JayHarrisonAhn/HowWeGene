//
//  MultipleAllelesContent8.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct MultipleAllelesContent8: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 50) {
                HStack(spacing: 20) {
                    GenotypeView(
                        personView: {
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 30)
                                .font(.body.weight(.light))
                        },
                        genotype: Genotype<BloodType>(
                            firstAllele: .a,
                            secondAllele: .o
                        ),
                        showAlleleComment: true
                    )
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Consider the example of a person with A and O alleles:")
                        Text("- Allele A produces A antigen.")
                        Text("- Allele O produces nothing.")
                    }.multilineTextAlignment(.leading)
                }
                HStack(spacing: 20) {
                    GenotypeView(
                        personView: {
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 30)
                                .font(.body.weight(.light))
                        },
                        genotype: Genotype<BloodType>(
                            firstAllele: .a,
                            secondAllele: .b
                        ),
                        showAlleleComment: true
                    )
                    VStack(alignment: .leading, spacing: 10) {
                        Text("The other example is : a person with A and B alleles:")
                        Text("- Allele A produces A antigen.")
                        Text("- Allele B produces B antigen.")
                    }.multilineTextAlignment(.leading)
                }
                HStack(spacing: 10) {
                    AlleleView<BloodType>(
                        allele: BloodType.a
                    )
                    Image(systemName: "equal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                    AlleleView<BloodType>(
                        allele: BloodType.b
                    )
                    Image(systemName: "greaterthan")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                    AlleleView<BloodType>(
                        allele: BloodType.o
                    )
                }
                Text("Through this, we can see that A and B alleles are codominant,\nwhile the O allele is recessive.")
            }
        }
    }
}

struct MultipleAllelesContent8_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesContent8()
    }
}
