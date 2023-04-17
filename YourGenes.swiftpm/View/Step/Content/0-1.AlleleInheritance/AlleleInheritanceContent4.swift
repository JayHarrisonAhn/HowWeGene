//
//  AlleleInheritanceContent4.swift
//  Your Genes
//
//  Created by Jay Ahn on 2023/04/17.
//

import SwiftUI

struct AlleleInheritanceContent4: View {
    let pedigree = ParentsPedigree<SampleAllele>(
        dad: Genotype(
            firstAllele: .a,
            secondAllele: .b
        ),
        mom: Genotype(
            firstAllele: .a,
            secondAllele: .b
        )
    )
    @State var child: (dad: Int, mom: Int) = (0, 0)
    var childGenotype: Genotype<SampleAllele> {
        Genotype(
            firstAllele: ([pedigree.dad.firstAllele,
                           pedigree.dad.secondAllele
                          ])[child.dad],
            secondAllele: ([pedigree.mom.firstAllele,
                            pedigree.mom.secondAllele
                           ])[child.mom]
        )
    }
    
    var body: some View {
        ContentScrollableView {
            VStack(spacing: 50) {
                Text("For example, suppose there are alleles A and B.\n\nBelow, you can choose which allele to inherit from each parent and observe which pair of alleles the child will inherit.")
                VStack {
                    simulator
                    Image(systemName: "arrow.down")
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 40)
                    childView
                }
            }
        }
    }
    
    @ViewBuilder
    var simulator: some View {
        HStack(spacing: 20) {
            VStack {
                Text("Dad")
                HStack {
                    alleleSelector(
                        pedigree.dad.firstAllele,
                        selected: child.dad == 0
                    ) {
                        child = (dad: 0, mom: child.mom)
                    }
                    alleleSelector(
                        pedigree.dad.secondAllele,
                        selected: child.dad == 1
                    ) {
                        child = (dad: 1, mom: child.mom)
                    }
                }
            }
            .padding(10)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.primary.opacity(0.4), lineWidth: 1)
            }
            VStack {
                Text("Mom")
                HStack {
                    alleleSelector(
                        pedigree.mom.firstAllele,
                        selected: child.mom == 0
                    ) {
                        child = (dad: child.dad, mom: 0)
                    }
                    alleleSelector(
                        pedigree.mom.secondAllele,
                        selected: child.mom == 1
                    ) {
                        child = (dad: child.dad, mom: 1)
                    }
                }
            }
            .padding(10)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.primary.opacity(0.4), lineWidth: 1)
            }
        }
    }
    
    @ViewBuilder
    func alleleSelector(
        _ allele: SampleAllele,
        selected: Bool,
        onSelect: (()->Void)?
    ) -> some View {
        if selected {
            Button {
                onSelect?()
            } label: {
                Text(allele.title)
                    .font(.system(size: 50))
                    .frame(maxWidth: 60, maxHeight: 60)
            }.buttonStyle(.borderedProminent)
        } else {
            Button {
                onSelect?()
            } label: {
                Text(allele.title)
                    .font(.system(size: 50))
                    .frame(maxWidth: 60, maxHeight: 60)
            }.buttonStyle(.bordered)
        }
    }
    
    @ViewBuilder
    var childView: some View {
        GenotypeView(
            personView: EmptyView.init,
            genotype: childGenotype,
            showAlleleComment: false
        )
    }
}

struct AlleleInheritanceContent4_Previews: PreviewProvider {
    static var previews: some View {
        AlleleInheritanceContent4()
    }
}
