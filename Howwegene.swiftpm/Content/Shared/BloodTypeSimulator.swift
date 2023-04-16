//
//  BloodTypeSimulator.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct BloodTypeSimulator: View {
    @State var genotype: Genotype<BloodType>
    
    var body: some View {
        VStack(spacing: 8) {
            VStack(spacing: 3) {
                bloodtype
                Text("Alleles")
                    .foregroundColor(.primary.opacity(0.3))
            }
            Image(systemName: "arrow.down")
            VStack(spacing: 3) {
                antigens
                Text("Antigen")
                    .foregroundColor(.primary.opacity(0.3))
            }
            Image(systemName: "arrow.down")
            VStack(spacing: 3) {
                AlleleExpressionView<BloodType>(expression: genotype.expression)
                    .scaledToFit()
                    .frame(maxWidth: 50)
                Text("Blood Type")
                    .foregroundColor(.primary.opacity(0.3))
            }
        }
        .font(.caption)
    }
    @ViewBuilder
    var bloodtype: some View {
        HStack {
            bloodtypeSelector(genotype.firstAllele) { selected in
                genotype = Genotype(
                    firstAllele: selected,
                    secondAllele: genotype.secondAllele
                )
            }
            bloodtypeSelector(genotype.secondAllele) { selected in
                genotype = Genotype(
                    firstAllele: genotype.firstAllele,
                    secondAllele: selected
                )
            }
        }
    }
    
    @ViewBuilder
    func bloodtypeSelector(
        _ bloodType: BloodType,
        onSelect: @escaping (BloodType)->Void
    ) -> some View {
        Menu {
            ForEach(0..<BloodType.allCases.count, id: \.self) { index in
                Button(BloodType.allCases[index].title) {
                    onSelect(BloodType.allCases[index])
                }
            }
        } label: {
            AlleleView<BloodType>(allele: bloodType)
                .frame(maxWidth: 50)
        }
    }
    
    @ViewBuilder
    var antigens: some View {
        let genotype: Set = [
            genotype.firstAllele,
            genotype.secondAllele
        ]
        HStack {
            if genotype == [.o] {
                Antigen.emptyIcon
                    .scaledToFit()
                    .frame(maxWidth: 50)
            } else {
                if genotype.contains(.a) {
                    Antigen.a.icon
                        .scaledToFit()
                        .frame(maxWidth: 50)
                }
                if genotype.contains(.b) {
                    Antigen.b.icon
                        .scaledToFit()
                        .frame(maxWidth: 50)
                }
            }
        }
    }
}

struct BloodTypeSimulator_Previews: PreviewProvider {
    static var previews: some View {
        BloodTypeSimulator(
            genotype: Genotype<BloodType>(
                firstAllele: .o,
                secondAllele: .o
            )
        )
    }
}
