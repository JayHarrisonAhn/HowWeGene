//
//  ParentsPedigree.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import Foundation

struct ParentsPedigree<AlleleType: Allele> {
    let dad: Genotype<AlleleType>
    let mom: Genotype<AlleleType>
    
    static func random() -> ParentsPedigree {
        return ParentsPedigree(
            dad: Genotype(
                firstAllele: AlleleType.allCases.randomElement()!,
                secondAllele: AlleleType.allCases.randomElement()!
            ),
            mom: Genotype(
                firstAllele: AlleleType.allCases.randomElement()!,
                secondAllele: AlleleType.allCases.randomElement()!
            )
        )
    }
    
    func possibleChildren() -> Set<Genotype<AlleleType>> {
        return [
            Genotype(firstAllele: dad.firstAllele, secondAllele: mom.firstAllele),
            Genotype(firstAllele: dad.firstAllele, secondAllele: mom.secondAllele),
            Genotype(firstAllele: dad.secondAllele, secondAllele: mom.firstAllele),
            Genotype(firstAllele: dad.secondAllele, secondAllele: mom.secondAllele),
        ]
    }
}
