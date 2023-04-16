//
//  MultipleAllelesContent7.swift
//  YourGenes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct MultipleAllelesContent7: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("An allele is responsible for producing antigen.")
                Text("An allele produces A antigen;\nB produces B antigen;\nand unlike the others, O produces nothing.")
                VStack(spacing: 10) {
                    bloodtypeAntigenCard(
                        bloodTypeAllele: .a
                    ) {
                        Antigen.a.icon
                    }
                    bloodtypeAntigenCard(
                        bloodTypeAllele: .b
                    ) {
                        Antigen.b.icon
                    }
                    bloodtypeAntigenCard(
                        bloodTypeAllele: .o
                    ) {
                        Antigen.emptyIcon
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    func bloodtypeAntigenCard<Content:View>(
        bloodTypeAllele: BloodType,
        antigen: ()->Content
    ) -> some View {
        HStack(spacing: 20) {
            AlleleView<BloodType>(allele: bloodTypeAllele)
            Image(systemName: "arrow.forward")
            antigen()
                .scaledToFit()
        }
        .padding(10)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(.primary.opacity(0.4), lineWidth: 1)
        )
        .frame(maxHeight: 60)
    }
}

struct MultipleAllelesContent7_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAllelesContent7()
    }
}
