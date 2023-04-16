//
//  Genotype.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct Genotype<AlleleType: Allele>: Equatable, Hashable {
    let firstAllele: AlleleType
    let secondAllele: AlleleType
    
    static func ==(lhs: Genotype, rhs: Genotype) -> Bool {
        let left: Set = [lhs.firstAllele, lhs.secondAllele]
        let right: Set = [rhs.firstAllele, rhs.secondAllele]
        return left == right
    }
    
    var expression: AlleleType.Expression {
        AlleleType.revealing(genotype:self)
    }
}
