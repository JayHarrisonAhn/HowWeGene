//
//  MultipleAllelesContent7.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct MultipleAllelesContent7: View {
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 30) {
                Text("A allele produces A antigen;\nB produces B antigen;\nand O produces nothing.")
                VStack(spacing: 10) {
                    bloodtypeAntigenCard(
                        bloodTypeAllele: .a
                    ) {
                        Image("antigen_icon_a")
                            .resizable()
                    }
                    bloodtypeAntigenCard(
                        bloodTypeAllele: .b
                    ) {
                        Image("antigen_icon_b")
                            .resizable()
                    }
                    bloodtypeAntigenCard(
                        bloodTypeAllele: .o
                    ) {
                        Image(systemName: "xmark.circle")
                            .resizable()
                    }
                }
                Text("Therefore, A and B alleles are codominant\nand O allele is recessive.")
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
                Text("Imagine - a person has A and O alleles.\nAllele A will produce A antigen and O will do nothing.\n-Then, his/her body will anyway produce A antigen.")
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
