//
//  GenotypeView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct GenotypeView<AlleleType: Allele>: View {
    let person: Person
    
    let genotype: Genotype<AlleleType>
    let showAlleleComment: Bool
    
    init(
        person: Person,
        genotype: Genotype<AlleleType>,
        showAlleleComment: Bool = false
    ) {
        self.person = person
        self.genotype = genotype
        self.showAlleleComment = showAlleleComment
    }
    
    var body: some View {
        VStack {
            icon
                .scaledToFit()
                .frame(maxWidth: 50)
            HStack {
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
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.primary, lineWidth: 3)
        )
    }
    
    @ViewBuilder
    var icon: some View {
        switch person {
        case .human:
            Image(systemName: "person").resizable()
        case .man:
            Image("icon_dad").resizable()
        case .woman:
            Image("icon_mom").resizable()
        }
    }
    
    enum Person {
        case man
        case woman
        case human
    }
}

struct NewAllelePersonView_Previews: PreviewProvider {
    static var previews: some View {
        GenotypeView<WidowsPeak>(
            person: .human,
            genotype: Genotype(
                firstAllele: .straight,
                secondAllele: .vShaped
            )
        )
    }
}
