//
//  GenotypeView.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct GenotypeView<AlleleType: Allele, Content: View>: View {
    
    let personView: () -> Content
    let genotype: Genotype<AlleleType>
    let showAlleleComment: Bool
    
    var body: some View {
        VStack(spacing: 5) {
            personView()
                .scaledToFit()
                .frame(height: 50)
            HStack(spacing: 5) {
                AlleleView<AlleleType>(
                    allele: genotype.firstAllele,
                    showComment: showAlleleComment
                )
                AlleleView<AlleleType>(
                    allele: genotype.secondAllele,
                    showComment: showAlleleComment
                )
            }
        }
        .padding(5)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.primary, lineWidth: 2)
        )
    }
}

struct NewAllelePersonView_Previews: PreviewProvider {
    static var previews: some View {
        GenotypeView(
            personView: {
                Text("T")
            },
            genotype: Genotype<WidowsPeak>(
                firstAllele: .straight,
                secondAllele: .vShaped
            ),
            showAlleleComment: true
        )
    }
}
