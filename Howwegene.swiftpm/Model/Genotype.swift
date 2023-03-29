//
//  Genotype.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/03/29.
//

import SwiftUI

struct Genotype<AlleleType: Allele> {
    let firstAllele: AlleleType
    let secondAllele: AlleleType
}
