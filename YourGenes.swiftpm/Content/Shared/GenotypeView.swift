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
        VStack {
            personView()
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
}

struct GenotypePersonView: View {
    let person: Person
    enum Person {
        case man
        case woman
        case human
    }
    
    var body: some View {
        switch person {
        case .human:
            Image(systemName: "person").resizable()
        case .man:
            Image("icon_dad").resizable()
        case .woman:
            Image("icon_mom").resizable()
        }
    }
}

struct NewAllelePersonView_Previews: PreviewProvider {
    static var previews: some View {
        GenotypeView<WidowsPeak, GenotypePersonView>(
            personView: {
                GenotypePersonView(person: .human)
            },
            genotype: Genotype(
                firstAllele: .straight,
                secondAllele: .vShaped
            ),
            showAlleleComment: true
        )
    }
}
